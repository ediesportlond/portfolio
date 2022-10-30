<?php
    /*checkOTP and changePass contain site URL
    Needs to be updated when site is migrated.*/

    $servername = "localhost";
    $username = "itseddie_admin";
    $password = ".)sgw%;jJPIp";
    $dbname = "itseddie_main";

    // Create connection
    $conn = mysqli_connect($servername, $username, $password, $dbname);

    // Check connection
    if (!$conn) {
      die("Connection failed: " . mysqli_connect_error());
    }


//CONTACTS FUNCTIONS


    function insertContact($conn, $obj){

        // prepare and bind
        $stmt = $conn->prepare("INSERT INTO contacts (user_id, company, title, name, phone, office, email, notes) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("isssssss", $userID, $company, $title, $name, $phone, $office, $email, $notes);

        $userID = $obj['userID'];
        $company = $obj['comp'];
        $title = $obj['title'];
        $name = $obj['name'];
        $phone = $obj['cellNum'];
        $office = $obj['offNum'];
        $email = $obj['email'];
        $notes = $obj['notes'];

        $stmt->execute();
        
        //echo $conn->insert_id;
        
        $stmt->close();
    }
    
    function updateContact($conn, $obj){

        $stmt = $conn->prepare("UPDATE contacts SET company = ?, title = ?, name = ?, phone = ?, office = ?, email= ?, notes = ? WHERE id=?");

        $stmt->bind_param("sssssssi", $company, $title, $name, $phone, $office, $email, $notes, $contactID);
        
        $company = $obj['comp'];
        $title = $obj['title'];
        $name = $obj['name'];
        $phone = $obj['cellNum'];
        $office = $obj['offNum'];
        $email = $obj['email'];
        $notes = $obj['notes'];
        $contactID = $obj['contactID'];
        
        $stmt->execute();
        
    }

    function deleteSQL($conn, $obj){
        if($obj['deleteResume']){
            $sql = "DELETE FROM ".$obj["table"]." WHERE `id`= ".$obj['resumeID'];
        } else {
            // sql to delete a record
            $sql = "DELETE FROM ".$obj["table"]." WHERE id=".$obj['deleteID'];
        }
        $conn->query($sql);
    }

    //does not use prepared statements. Don't use with user input
    function searchDB($conn, $table){
        if($table == 'contacts'){
            $sort = 'company';
            $where = 'user_id';
        } else if($table == 'Applications'){
            $sort = 'status, company';
            $where = 'user_id';
        } else if($table == 'appDesc'){
            $table = 'Applications';
            $sort = 'applied DESC';
            $where = 'user_id';
        } else if($table == 'appAsc'){
            $table = 'Applications';
            $sort = 'applied ASC';
            $where = 'user_id';
         }else {
            $sort = '`version id` DESC';
            $where = 'user id';
        }
        
        $sql = "SELECT * FROM ".$table." WHERE `".$where."` = ".$_SESSION['id']. " ORDER BY ".$sort;
        $result = mysqli_query($conn, $sql);
        $result =mysqli_fetch_all($result, MYSQLI_ASSOC);
        
        return $result;
    }
    
    function showContacts($conn){
        $result = searchDB($conn, 'contacts');
        if(sizeof($result) == 0){
           echo '<td>No results.</td>';
        } else {
            for($i = 0; $i < sizeof($result); $i++){
                echo '<tr id="'.$result[$i]['id'].'">';
                echo '<td>'.$result[$i]['company'].'</td>';
                echo '<td>'.$result[$i]['title'].'</td>';
                echo '<td>'.$result[$i]['name'].'</td>';
                
                echo '<td><a href="tel:'.$result[$i]['phone'].'" style = "text-decoration: none">';
                print_r($result[$i]['phone']);
                echo '</a></td>';
                
                echo '<td><a href="tel:'.$result[$i]['office'].'" style = "text-decoration: none">';
                print_r($result[$i]['office']);
                echo '</a></td>';
                
                echo '<td><a href="mailto:'.$result[$i]['email'].'" style = "text-decoration:none">';
                print_r($result[$i]['email']);
                echo '</a></td>';
                
                echo '<td style="max-width: 100px; overflow: hidden; white-space: nowrap;">'.$result[$i]['notes'].'</td>';
                
                echo '<td>
                        <button class="deleteContact">Delete</button>
                    </td>';
                
                echo '</tr>';
            }
        }
    }
    
    function contactsQuery($conn, $obj){
        
        $stmt = $conn->prepare('SELECT * FROM contacts WHERE user_id = ? AND (company LIKE ? OR title LIKE ? OR name LIKE ?) ORDER BY company');

        $stmt->bind_param("ssss", $userID, $query, $query, $query);
        
        $userID = $obj['userID'];
        $query = "%".$obj['query']."%";
        
        $stmt->execute();
        
        /* bind result variables */
        $stmt->bind_result($id, $userID, $company, $title, $name, $phone, $office, $email, $notes);
    
        $rows = [];
        /* fetch values */
        $i = 0;
        while ($stmt->fetch()) {
            $rows[$i] = [
                'id' => $id,
                'userID' => $userID,
                'company' => $company,
                'title' => $title,
                'name' => $name,
                'phone' => $phone,
                'office' => $office,
                'email' => $email,
                'notes' => $notes
            ];
            $i++;
        }
        
        if(sizeof($rows) == 0){
           echo '<td>No results.</td>';
        } else {
            for($i = 0; $i < sizeof($rows); $i++){
                echo '<tr id="'.$rows[$i]['id'].'">';
                echo '<td>'.$rows[$i]['company'].'</td>';
                echo '<td>'.$rows[$i]['title'].'</td>';
                echo '<td>'.$rows[$i]['name'].'</td>';
                
                echo '<td><a href="tel:'.$rows[$i]['phone'].'" style = "text-decoration: none">';
                print_r($rows[$i]['phone']);
                echo '</a></td>';
                
                echo '<td><a href="tel:'.$rows[$i]['office'].'" style = "text-decoration: none">';
                print_r($rows[$i]['office']);
                echo '</a></td>';
                
                echo '<td><a href="mailto:'.$rows[$i]['email'].'" style = "text-decoration:none">'.$rows[$i]['email'].'</a></td>';
                
                echo '<td style="max-width: 100px; overflow: hidden; white-space: nowrap;">'.$rows[$i]['notes'].'</td>';
                
                echo '<td>
                        <button class="deleteContact">Delete</button>
                    </td>';
                
                echo '</tr>';
            }
        }
    
        /* close statement */
        $stmt->close();
        }


//APPLICATIONS FUNCTIONS


    function showApps($conn, $obj){
        if($obj == 'dateDesc'){
            $result = searchDB($conn, 'appDesc');
        }else if($obj == 'dateAsc'){
            $result = searchDB($conn, 'appAsc');
        } else {
            $result = searchDB($conn, 'Applications');
        }
        
        if(sizeof($result) == 0){
           echo '<td>No results.</td>';
        } else {
            for($i = 0; $i < sizeof($result); $i++){
                echo '<tr id="'.$result[$i]['id'].'">';
                echo '<td>'.$result[$i]['status'].'</td>';
                echo '<td>'.$result[$i]['company'].'</td>';
                echo '<td>'.$result[$i]['position'].'</td>';
                echo '<td>'.$result[$i]['salary'].'</td>';
                echo '<td>'.$result[$i]['experience'].'</td>';

                $jobLink = $result[$i]['job link'];
                $site = $result[$i]['website'];
                
                if ($jobLink == ''){
                    echo '<td></td>';
                } else {
                    echo '<td><a href="'.$jobLink.'" target="_blank" style="text-decoration: none ">Job Posting</a></td>';
                }
                
                if($site == ''){
                    echo '<td></td>';
                } else {
                    echo '<td><a href="'.$site.'" target="_blank" style="text-decoration: none ">Company Site</a></td>';
                }
                
                $resumeVersion = $result[$i]['resume'];
                
                if($resumeVersion != 'none' && $resumeVersion != ''){
                    $resumeResults = getResumeLocation($conn, $resumeVersion);
                    $location = $resumeResults['location'];
                    $resumeNotes = $resumeResults['notes'];
                    echo '<td><a href="'.$location.'" target="_blank" style="text-decoration: none">V'.$resumeVersion.' '.$resumeNotes.'</a></td>';
                } else {
                    echo '<td>'.$resumeVersion.'</td>';
                }

                if($result[$i]['applied'] == '0000-00-00'){
                    echo '<td></td>';
                } else {
                    $date=date_create($result[$i]['applied']);
                    echo '<td>'. date_format($date,"m/d/Y") .'</td>';
                }

                if($result[$i]['appointment'] == '0000-00-00'){
                    echo '<td></td>';
                } else {
                    $date=date_create($result[$i]['appointment']);
                    echo '<td>'. date_format($date,"m/d/Y") .'</td>';
                }

                echo '<td><a href="?page=contacts&searchContacts=true&query='.$result[$i]['company'].'" style="text-decoration:none">Contacts</a></td>';
                
                echo '<td>'.$result[$i]['source'].'</td>';

                echo '<td style="max-width: 100px; overflow: hidden; white-space: nowrap;">'.$result[$i]['notes'].'</td>';

                echo '<td>
                        <button class="deleteApp">Delete</button>
                    </td>';

                echo '</tr>';
            }
        }
    }

    function saveApp($conn, $obj){

        // prepare and bind
        $stmt = $conn->prepare("INSERT INTO `Applications` (`user_id`, `status`, `status date`, `company`, `position`, `salary`, `experience`, `job link`, `website`, `resume`, `applied`, `appointment`, `notes`, `contacts`, `source`) VALUES (?, ?, CURDATE(), ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
        
        $stmt->bind_param("isssssssssssss", $userID, $status, $company, $position, $salary, $experience, $jobLink, $website, $resume, $applied, $appointment, $notes, $contacts, $source );

        $userID = $obj['userID'];
        $status = $obj['appStatus'];
        $company = $obj['comp'];
        $position = $obj['jobTitle'];
        $salary = $obj['pay'];
        $experience = $obj['exp'];
        $jobLink = $obj['jobLink'];
        $website = $obj['website'];
        $resume = $obj['resumeVers'];
        $applied = $obj['applyDate'];
        $appointment = $obj['schedDate'];
        $notes = $obj['notes'];
        $contacts = '';
        $source = $obj['source'];

        $stmt->execute();
        
        //echo $conn->insert_id;
        
        $stmt->close();
    }
    
    function updateApp($conn, $obj){
        
        if($obj['updateStatus']){
        //option when status and status date needs to be updated
            $stmt = $conn->prepare("UPDATE Applications SET `status` = ?, `status date` = CURDATE(), `company` = ?, `position` = ?, `salary` = ?, `experience` = ?, `job link` = ?, `website` = ?, `resume` = ?, `applied` = ?, `appointment` = ?, `notes` = ?, `contacts` = ?, `source` = ? WHERE id=?");
    
            $stmt->bind_param("sssssssssssssi", $status, $company, $position, $salary, $experience, $jobLink, $website, $resume, $applied, $appointment, $notes, $contacts, $source, $appID );
        } else {
            $stmt = $conn->prepare("UPDATE Applications SET `company` = ?, `position` = ?, `salary` = ?, `experience` = ?, `job link` = ?, `website` = ?, `resume` = ?, `applied` = ?, `appointment` = ?, `notes` = ?, `contacts` = ?, `source` = ? WHERE id=?");
    
            $stmt->bind_param("ssssssssssssi", $company, $position, $salary, $experience, $jobLink, $website, $resume, $applied, $appointment, $notes, $contacts, $source, $appID );
        }
        
        $status = $obj['appStatus'];
        $company = $obj['comp'];
        $position = $obj['jobTitle'];
        $salary = $obj['pay'];
        $experience = $obj['exp'];
        $jobLink = $obj['jobLink'];
        $website = $obj['website'];
        $resume = $obj['resumeVers'];
        $applied = $obj['applyDate'];
        $appointment = $obj['schedDate'];
        $notes = $obj['notes'];
        $contacts = '';
        $source = $obj['source'];
        $appID = $obj['appID'];
        
        $stmt->execute();
        $stmt->close();
    }
    
    function appsQuery($conn, $obj){
        
        $stmt = $conn->prepare('SELECT * FROM Applications WHERE user_id = ? AND (company LIKE ? OR position LIKE ? OR status LIKE ?) ORDER BY status, company');

        $stmt->bind_param("isss", $userID, $query, $query, $query);
        
        $userID = $obj['userID'];
        $query = "%".$obj['query']."%";
        
        $stmt->execute();
        
        /* bind result variables */
        $stmt->bind_result($id, $userID, $status, $statusDate, $company, $position, $salary, $experience, $jobLink, $website, $resume, $applied, $appointment, $notes, $contacts, $source);
    
        $result = [];
        /* fetch values */
        $i = 0;
        while ($stmt->fetch()) {
            $result[$i] = [
                'id' => $id,
                'userID' => $userID,
                'status' => $status,
                'company' => $company,
                'position' => $position,
                'salary' => $salary,
                'experience' => $experience,
                'job link' => $jobLink,
                'website' => $website,
                'resume' => $resume,
                'applied' => $applied,
                'appointment' => $appointment,
                'notes' => $notes,
                'contacts' => $contacts, 
                'source' => $source
            ];
            $i++;
        }
        
        
        if(sizeof($result) == 0){
           echo '<td>No results.</td>';
        } else {
            for($i = 0; $i < sizeof($result); $i++){
                echo '<tr id="'.$result[$i]['id'].'">';
                echo '<td>'.$result[$i]['status'].'</td>';
                echo '<td>'.$result[$i]['company'].'</td>';
                echo '<td>'.$result[$i]['position'].'</td>';
                echo '<td>'.$result[$i]['salary'].'</td>';
                echo '<td>'.$result[$i]['experience'].'</td>';

                $jobLink = $result[$i]['job link'];
                $site = $result[$i]['website'];
                
                if ($jobLink == ''){
                    echo '<td></td>';
                } else {
                    echo '<td><a href="'.$jobLink.'" target="_blank" style="text-decoration: none ">Job Posting</a></td>';
                }
                
                if($site == ''){
                    echo '<td></td>';
                } else {
                    echo '<td><a href="'.$site.'" target="_blank" style="text-decoration: none ">Company Site</a></td>';
                }
                
                $resumeVersion = $result[$i]['resume'];
                
                if($resumeVersion != 'none' && $resumeVersion != ''){
                    $resumeResults = getResumeLocation($conn, $resumeVersion);
                    $location = $resumeResults['location'];
                    $resumeNotes = $resumeResults['notes'];
                    echo '<td><a href="'.$location.'" target="_blank" style="text-decoration: none">V'.$resumeVersion.' '.$resumeNotes.'</a></td>';
                } else {
                    echo '<td>'.$resumeVersion.'</td>';
                }

                if($result[$i]['applied'] == '0000-00-00'){
                    echo '<td></td>';
                } else {
                    $date=date_create($result[$i]['applied']);
                    echo '<td>'. date_format($date,"m/d/Y") .'</td>';
                }

                if($result[$i]['appointment'] == '0000-00-00'){
                    echo '<td></td>';
                } else {
                    $date=date_create($result[$i]['appointment']);
                    echo '<td>'. date_format($date,"m/d/Y") .'</td>';
                }

                echo '<td><a href="?page=contacts&searchContacts=true&query='.$result[$i]['company'].'" style="text-decoration:none">Contacts</a></td>';
                
                echo '<td>'.$result[$i]['source'].'</td>';
                echo '<td style="max-width: 100px; overflow: hidden; white-space: nowrap;">'.$result[$i]['notes'].'</td>';
                echo '<td>
                        <button class="deleteApp">Delete</button>
                    </td>';

                echo '</tr>';
            }
        }
    
        /* close statement */
        $stmt->close();
    }
    
//RESUME FUNCTIONS

    function versionID($conn, $userID, $all){
        $sql = "SELECT `version id`, `notes` FROM `resume` WHERE `user id` = ".$userID." ORDER BY `version id` DESC";
        
        if($all){
            $result = mysqli_query($conn, $sql);
            $result =mysqli_fetch_all($result, MYSQLI_ASSOC);
            
            return $result;
        } else {
            $result = mysqli_query($conn, $sql);
            $result = mysqli_fetch_assoc($result);
            
            return $result;
        }
    }
    
    function insertResume($conn, $obj){
        
        // prepare and bind
        $stmt = $conn->prepare("INSERT INTO `resume` (`user id`, `version id`, `notes`, `location`) VALUES (?, ?, ?, ?)");
        $stmt->bind_param("iiss", $userID, $version, $notes, $location);

        $userID = $obj['userID'];
        $version =$obj['version'];
        $notes = $obj['notes'];
        $location = '';

        $stmt->execute();
        
        return $conn->insert_id;
    }
    
    function updateLocation($conn, $obj){
        $stmt = $conn->prepare("UPDATE resume SET `location` = ? WHERE id=?");
    
        $stmt->bind_param("si", $location, $resumeID);
        
        $location = $obj['location'];
        $resumeID = $obj['resumeID'];
        
        $stmt->execute();
        $stmt->close();
    }
    
    function showResumes($conn){
        $result = searchDB($conn, 'resume');
        
        if(sizeof($result) == 0){
           echo '<td>No results.</td>';
        } else {
            for($i = 0; $i < sizeof($result); $i++){
                $id = $result[$i]['version id'];
                echo '<a class="'.$id.'" href="'.$result[$i]['location'].'" target="_blank">Version '.$id.'</a>';
                echo '<button class="deleteResume" name="'.$id.'">Delete</button><br><br>';
                echo '<span class="'.$id.'">'.$result[$i]['notes']."<br><br></span>";
            }
        }
    }
    
    function showVersions($conn, $userID){
        $result = versionID($conn, $userID, true);
        
        if(sizeof($result) == 0){
           return null;
        } else {
            for($i = 0; $i < sizeof($result); $i++){
                $vID = $result[$i]['version id'];
                $notes = $result[$i]['notes'];
                echo '<option value="'.$vID.'">Version '.$vID.' '.$notes.'</option>';
            }
        }
    }
    
    function getResumeLocation($conn, $vID){
        $sql = "SELECT `location`, `notes` FROM `resume` WHERE `user id` = ".$_SESSION['id']." AND `version id` = ".$vID;

        $result = mysqli_query($conn, $sql);
        $result = mysqli_fetch_assoc($result);

        return $result;
    }
    
//FUNCTIONS FOR HOME

    function weeksAppointments($conn){
        $sql = "SELECT `appointment`, `company` FROM `Applications` WHERE `appointment` > CURDATE() AND `appointment` != '0000-00-00'AND `user_id` = ".$_SESSION['id']." ORDER BY `appointment` ASC";
        
        $result = mysqli_query($conn, $sql);
        $result =mysqli_fetch_all($result, MYSQLI_ASSOC);
        
        return $result;
    }
    
    function getCount($conn, $obj){
        //Total applications
        if($obj['count'] == 'applications'){
            $sql = "SELECT COUNT(`id`) FROM `Applications` WHERE `user_id` = ".$obj['user_id']. " AND `status` != 'Apply Later' AND `status` != ''";
        
        //Total contacts
        } else if($obj['count'] == 'contacts'){
            $sql = "SELECT COUNT(`id`) FROM `Applications` WHERE `user_id` = ".$obj['user_id']." AND `status` != 'Apply Later' AND `status` != 'Applied' AND `status` != 'Rejected' AND `status` != 'Withdrew'";
        //Total Rejections
        } else if($obj['count'] == 'rejected'){
            $sql = "SELECT COUNT(`id`) FROM `Applications` WHERE `user_id` = ".$obj['user_id']." AND `status` = 'Rejected'";
        } else if($obj['count'] == 'interview'){
            $sql = "SELECT COUNT(`id`) FROM `Applications` WHERE `user_id` = ".$obj['user_id']." AND `status` LIKE '%interview%'";
        } else if($obj['count'] == 'offers'){
            $sql = "SELECT COUNT(`id`) FROM `Applications` WHERE `user_id` = ".$obj['user_id']." AND `status` = 'Offer Received'";
        }
        
        $result = mysqli_query($conn, $sql);
        $result =mysqli_fetch_all($result, MYSQLI_ASSOC);
        
        return $result;
    }
    
    function resumeConversions($conn){
        //total count for all versions
        $sql = "SELECT `resume`, COUNT(`resume`) AS `count` FROM `Applications` WHERE `user_id` = ".$_SESSION['id']." AND `resume` != 'none' AND `resume` != '' GROUP BY `resume` ORDER BY `count` ";
    
        $result = mysqli_query($conn, $sql);
        $result =mysqli_fetch_all($result, MYSQLI_ASSOC);
        
        $resumes = [];
        
        for($i = 0; $i < sizeof($result); $i++){
            $id = $result[$i]['resume'];
            $count = $result[$i]['count'];
            $resumes[$id] = $count;
        }
        
        //count of resumes where there was a contact
        $sql = "SELECT `resume`, COUNT(`resume`) AS `count` FROM `Applications` WHERE `user_id` = ".$_SESSION['id']." AND `status` != 'Apply Later' AND `status` != 'Applied' AND `status` != 'Rejected' AND `status` != 'Withdrew' AND `resume` != 'none' AND `resume` != '' GROUP BY `resume` ORDER BY `count` ";
    
        $result = mysqli_query($conn, $sql);
        $result =mysqli_fetch_all($result, MYSQLI_ASSOC);
        
        //when more than one at same ratio, select one with more app count
        
        $topPerformer = [
                'version' => 0,
                'ratio' => 0,
                'count' => 0
            ];
        
        for($i=0; $i < sizeof($result); $i++){
            $total = $resumes[$result[$i]['resume']];
            $contacted = $result[$i]['count'];
            $ratio = $contacted / $total;

            if($ratio > $topPerformer['ratio']){
                $topPerformer['version'] = $result[$i]['resume'];
                $topPerformer['count'] = $total;
                $topPerformer['ratio'] = $ratio;
            } else if ($ratio == $topPerformer['ratio']){
                if($total > $topPerformer[1]){
                $topPerformer['version'] = $result[$i]['resume'];
                $topPerformer['count'] = $total;
                $topPerformer['ratio'] = $ratio;
                }
            }
        }
        
        if($topPerformer['version']==0){
            return null;
        } else {
            return $topPerformer['version'];
        }
    }
    
//LOGIN SIGNUP FORGOT PASSWORD FUNCTIONS


    function signup($conn, $obj){
        
        //Start by checking email doesn't already exists.
        $stmt = $conn->prepare("SELECT `id` FROM `users` WHERE `email` = ?");
        $stmt->bind_param("s", $email);
        
        $email = $obj['email'];
        
        $stmt->execute();
        
        /* bind result variables */
        $stmt->bind_result($exists);
    
        $stmt->fetch();
        
        if($exists){
            return 'email exists';
        }
        
        $stmt = $conn->prepare("INSERT INTO `users` (`first name`, `last name`, `email`, `password`, `otp`, `expiration`) VALUES (?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("ssssss", $first, $last, $email, $password, $otp, $expiration);
        
        $first = $obj['first'];
        $last = $obj['last'];
        $email = $obj['email'];
        $otp = '';
        $expiration = '';
        $password = password_hash($_POST['newPassword'], PASSWORD_DEFAULT);
        
        $stmt->execute();
        
        return $conn->insert_id;
    }
    
    function login($conn, $obj){
        $stmt = $conn->prepare("SELECT `password`, `id` FROM `users` WHERE `email` = ?");
        $stmt->bind_param("s", $email);
        
        $email = $obj['email'];
        
        $stmt->execute();
        
        /* bind result variables */
        $stmt->bind_result($hash, $id);
    
        $stmt->fetch();

        if (password_verify($obj['password'], $hash)) {
            return $id;
        } else {
            return false;
        }
        
    }
    
//FORGOT PASSWORD/CHANGE PASSWORD


    
    function newOTP($conn, $obj){

        //Start by checking email doesn't already exists.
        $stmt = $conn->prepare("SELECT `id` FROM `users` WHERE `email` = ?");
        $stmt->bind_param("s", $email);

        $email = $obj;
        
        $stmt->execute();
        
        //bind result variables
        $stmt->bind_result($exists);
    
        $stmt->fetch();
        
        if(!$exists){
            return 'no email';
        }
        
        $stmt->close();
        
        $OTP = 0;
        
        //while loop
        while(true){
            //create OTP
            $OTP = rand(0,999999999999);
            
            //Check otp does not exist
            $stmt = $conn->prepare("SELECT `id` FROM `users` WHERE `otp` = ?");
            $stmt->bind_param("i", $otp);
            
            $otp = $OTP;
            
             $stmt->execute();
            
            // bind result variables 
            $stmt->bind_result($exists);
        
            if(!$stmt->fetch()){
                $exists = false;
            };
            
            if($exists){
                $stmt->close();
                continue;
            } else {
                $stmt->close();
                break;
            }
        }
        
        //add time stamp and otp to db
        // prepare and bind
        $stmt = $conn->prepare("UPDATE `users` SET `otp`= ?,`expiration`= NOW() WHERE `email` = ?");
        $stmt->bind_param("is", $otp, $email);

        $otp = $OTP;
        $email = $obj;

        $stmt->execute();
        
        $stmt->close();
        
        return $OTP;

    }
    
    function checkOTP($conn){
        
        $stmt = $conn->prepare("SELECT `expiration` FROM `users` WHERE `otp` = ?");
        $stmt->bind_param("i", $otp);
        
        $otp = $_GET['forgot'];
        
        $stmt->execute();
        
        // bind result variables
        $stmt->bind_result($exp);
    
        $stmt->fetch();
        
        $stmt->close();
        
        $d=strtotime("now");

        $startdate = strtotime($exp);
        $enddate = strtotime("+130 minutes", $startdate);
        
        //if true condition below is true otp has expired
        if(date("m-d-Y h:i:sa", $enddate) < date("m-d-Y h:i:sa", $d) || $exp == ''){

            $sql = "UPDATE `users` SET `otp`= Null,`expiration`= Null WHERE `otp` = ".$otp;
            $conn->query($sql);
            
            echo '<script>
                alert("Link has expired.");
                window.location.href = "http://itseddies.com/crm?page=otp";
            </script>';
        } else {
            return true;
        }
    }
    
    function changePass($conn, $obj, $otp){
        
        //if forgot password
        if($otp){
            checkOTP($conn);
            
            //insert new password
            $stmt = $conn->prepare("UPDATE`users` SET `password` = ?, `otp` = Null, `expiration`= Null WHERE `otp` = ?");
            $stmt->bind_param("ss", $password, $otp);
            
            $otp = $obj['otp'];
            $password = password_hash($obj['newPassword'], PASSWORD_DEFAULT);
            
            $stmt->execute();
            
            //after succesful change, navigate to login page.
                echo '<script>
                    alert("Password change succesful.");
                    window.location.href = "http://itseddies.com/crm?page=login";
                </script>';
        } else {
            //change password
            
            //insert new password
            $stmt = $conn->prepare("UPDATE`users` SET `password` = ? WHERE `id` = ?");
            $stmt->bind_param("si", $password, $id);
            
            $id = $_SESSION['id'];
            $password = password_hash($obj['newPassword'], PASSWORD_DEFAULT);
            
            $stmt->execute();

            echo '<div class="alert alert-success alert-dismissible fade show text-center" role="alert">
            <strong>Your password was succesfully changed.</strong> 
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>';
        }
    }
?>