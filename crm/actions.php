<?php
    include('functions.php');
    
//LOGIN ACTIONS


    if($_POST['login']){
        $obj = $_POST;
        $result = login($conn,$obj);

        if($result){
            $_SESSION['id'] = $result;
            header("Location: ?page=dashboard");
            exit;
        } else {
            echo '<div class="alert alert-danger text-center" role="alert">
                    Username or password is incorrect.
                 </div>';
        }
    }
    
    if($_POST['signup']){
        $obj = $_POST;
        $result = signup($conn, $obj);

        if($result == 'email exists'){
            echo '<script>alert("This email already exists.");</script>';
        } else if($result == ''){
            echo '<script>alert("Something went wrong. Please try again later.");</script>';
        } else {
            $_SESSION['id'] = $result;
            header("Location: ?page=dashboard");
            exit;
        }
    }
    
    if($_GET['logout']){
        $_SESSION['id'] = '';
    }
    
//FORGOT PASSWORD/CHANGE PASSWORD

    if($_POST['changePass']){
        $obj = $_POST;
        if($_POST['otp']){
            changePass($conn, $obj, true);
        } else if($_SESSION['id'] != '') {
            changePass($conn, $obj, false);
        }
    }
    
    if($_POST['otp']){
        $otp = newOTP($conn, $_POST['email']);
    
        //handle no email
        if($otp == 'no email'){
            echo '<div class="alert alert-warning alert-dismissible fade show text-center" role="alert">
                    <strong>Email not found.</strong>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>';
        } else {
        
            // the message
            $msg = "We received a password reset request. Click link to complete request. http://itseddies.com/crm?page=password&forgot=".$otp;
            
            // use wordwrap() if lines are longer than 70 characters
            $msg = wordwrap($msg,70);
            
            $headers = "From: noreply@itseddies.com";
            
            // send email
            mail($_POST['email'],"Reset your password",$msg, $headers);
            
            echo '<div class="alert alert-success alert-dismissible fade show text-center" role="alert">
                    <strong>Reset link has been sent.</strong> Remember to check your spam folder.
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>';
        }
    }

//CONTACTS ACTIONS


if($_POST['saveContact']){
    $obj = $_POST;
    $obj['userID'] = $_SESSION['id'];
    insertContact($conn, $obj);
}

if($_POST['deleteContact']){
    $obj = $_POST;
    $obj['table'] = 'contacts';
    $obj['deleteID'] = $obj['contactID'];
    deleteSQL($conn, $obj);
}

if($_POST['updateContact']){
    $obj = $_POST;
    updateContact($conn, $obj);
}

//APPLICATIONS ACTIONS


if($_POST['saveApp']){
    $obj = $_POST;
    $obj['userID'] = $_SESSION['id'];
    saveApp($conn, $obj);
}

if($_POST['updateApp']){
    $obj = $_POST;
    updateApp($conn, $obj);
}

if($_POST['deleteApp']){
    $obj = $_POST;
    $obj['table'] = 'Applications';
    $obj['deleteID'] = $obj['appID'];
    deleteSQL($conn, $obj);
}

//RESUME ACTIONS

if($_FILES){
    //retreive latest version ID and add 1
    $versionID = versionID($conn, $_SESSION['id'], false)['version id'] +1;
    
    $obj = [
        'userID' => $_SESSION['id'],
        'version' => $versionID,
        'notes' => $_POST['notes']
    ];
    
    //add new entry to DB and retrieve row id
    $resumeID = insertResume($conn, $obj);
    
    $target_dir = "resume/".$resumeID."_".$_SESSION['id']."_".$versionID."_";
    $target_file = $target_dir . basename($_FILES["resume"]["name"]);
    
    //add location to DB
    $obj['location'] = $target_file;
    $obj['resumeID'] = $resumeID;
    updateLocation($conn, $obj);
    
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
    
    // Check file size
    if ($_FILES["resume"]["size"] > 5242880) {
      echo "<script>alert('File exceeds 5MB limit.')</script>";
      $uploadOk = 0;
    }
    
    // Allow certain file formats
    if($imageFileType != "pdf" ) {
      echo "<script>alert('Only PDF files are allowed.')</script>";
      $uploadOk = 0;
    }
    
    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
      echo "<script>alert('Your file was not uploaded.')</script>";
        $obj['table'] = 'resume';
        $obj['deleteResume'] = true;
        $obj['resumeID'] = $obj['version'];
        $obj['userID'] = $_SESSION['id'];
        deleteSQL($conn, $obj);
    // if everything is ok, try to upload file
    } else {
      if (move_uploaded_file($_FILES["resume"]["tmp_name"], $target_file)) {
        echo "<script>alert('The file ". htmlspecialchars( basename( $_FILES["resume"]["name"])). " has been uploaded.')</script>";
      } else {
        $obj['table'] = 'resume';
        $obj['deleteResume'] = true;
        $obj['resumeID'] = $obj['version'];
        $obj['userID'] = $_SESSION['id'];
        deleteSQL($conn, $obj);
        
        echo "<script>alert('There was an error uploading your file.')</script>";
      }
    }
}

if($_POST['deleteResume']){
    $obj = $_POST;
    $obj['table'] = 'resume';
    deleteSQL($conn, $obj);
    unlink($obj['path']);
}