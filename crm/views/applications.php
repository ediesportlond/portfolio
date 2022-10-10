<?php
    if($_SESSION['id'] == ''){
        die('You are not logged in. <a href="'.$siteURL.'/crm">Return home</a>');
    }
?>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<main class='container-md text-center'>
    <h1 class='display-1'>Applications</h1>
        <a class="btn btn-primary mb-4" data-bs-toggle="collapse" href="#appCollapse" role="button" aria-expanded="false" aria-controls="appCollapse">
            Add New
        </a>
      
    <!-- Collapsable div-->
    <div class='collapse' id='appCollapse'>
        <div class='card card-body'>

    <!--Form to add/edit-->
            <h3>Add or edit an application</h3>
            <form method='post' action='?page=applications'>
                
                <div class='row mb-2'>
                    <div class='col-sm-3'>
                        <label class='form-label lead'>Application Status</label>
                    </div>
                    <div class='col-sm-9'>
                        <select class='form-select' name = 'appStatus'>
                            <option></option>
                            <option value='Apply Later'>Apply Later</option>
                            <option value='Applied'>Applied</option>
                            <option value='Applied'>Ghosted</option>
                            <option value='Rejected'>Rejected</option>
                            <option value='Withdrew'>Withdrew</option>
                            <option value='First Contact'>First Contact</option>
                            <option value='Interview Scheduled'>Interview Scheduled</option>
                            <option value='Tech Interview Scheduled'>Tech Interview Scheduled</option>
                            <option value='Final Interview Scheduled'>Final Interview Scheduled</option>
                            <option value='Awaiting Decision'>Awaiting Decision</option>
                            <option value='Coding Challenge'>Coding Challenge</option>
                            <option value='Offer Received'>Offer Received</option>
                            <option value='Background'>Background</option>
                            <option value='Hired'>Hired</option>
                        </select>
                    </div>
                </div>
                
                <div class='row mb-2'>
                    <div class='col-sm-3'>
                        <label class='form-label lead'>Company</label>
                    </div>
                    <div class='col-sm-9'>
                        <input class='form-control' type='text' name='comp'>
                    </div>
                </div>
                
                <div class='row mb-2'>
                    <div class='col-sm-3'>
                        <label class='form-label lead'>Position</label>
                    </div>
                    <div class='col-sm-9'>
                        <input class='form-control' type='text' name='jobTitle'>
                    </div>
                </div>
                
                <div class='row mb-2'>
                    <div class='col-sm-3'>
                        <label class='form-label lead'>Salary Range</label>
                    </div>
                    <div class='col-sm-9'>
                        <select class='form-select' name='pay'>
                            <option></option>
                            <option value='undisclosed'>Undisclosed</option>
                            <option value='0 - 9,999'>0 - 9,999</option>
                            <option value='10,000 - 34,999'>10,000 - 34,999</option>
                            <option value='35,000 - 44,999'>35,000 - 44,999</option>
                            <option value='45,000 - 59,999'>45,000 - 59,999</option>
                            <option value='60,000 - 69,999'>60,000 - 69,999</option>
                            <option value='70,000 - 79,999'>70,000 - 79,999</option>
                            <option value='80,000 - 89,999'>80,000 - 89,999</option>
                            <option value='90,000 - 99,999'>90,000 - 99,999</option>
                            <option value='100,000 - 119,999'>100,000 - 119,999</option>
                            <option value='120,000 - 149,999'>120,000 - 149,999</option>
                            <option value='150,000 - 199,999'>150,000 - 199,999</option>
                            <option value='200,000+'>200,000+</option>
                        </select>
                    </div>
                </div>
                
                <div class='row mb-2'>
                    <div class='col-sm-3'>
                        <label class='form-label lead'>Experience Required</label>
                    </div>
                    <div class='col-sm-9'>
                        <select class='form-select' name='exp'>
                            <option></option>
                            <option value='intern'>Intern</option>
                            <option value='Entry Level'>Entry Level</option>
                            <option value='Junior'>Junior</option>
                            <option value='Mid-Level'>Mid-Level</option>
                            <option value='Senior'>Senior</option>
                            <option value='Management'>Management</option>
                            <option value='Director'>Director</option>
                            <option value='Upper Management'>Upper Management</option>
                            <option value='C level'>C Level</option>
                        </select>
                    </div>
                </div>
                
                <div class='row mb-2'>
                    <div class='col-sm-3'>
                        <label class='form-label lead'>Job Link</label>
                    </div>
                    <div class='col-sm-9'>
                        <input class='form-control' name='jobLink'>
                    </div>
                </div>
                
                <div class='row mb-2'>
                    <div class='col-sm-3'>
                        <label class='form-label lead'>Company Website</label>
                    </div>
                    <div class='col-sm-9'>
                        <input class='form-control' name='website'>
                    </div>
                </div>
                
                <div class='row mb-2'>
                    <div class='col-sm-3'>
                        <label class='form-label lead'>Resume Version Used</label>
                    </div>
                    <div class='col-sm-9'>
                        <select class='form-select' name='resumeVers'>
                            <option></option>
                            <option value='none'>None</option>
                            <?php
                                showVersions($conn, $_SESSION['id']);
                            ?>
                        </select>
                    </div>
                </div>
                
                <div class='row mb-2'>
                    <div class='col-sm-3'>
                        <label class='form-label lead'>Date Applied</label>
                    </div>
                    <div class='col-sm-9'>
                        <input class='form-control' type='date' name='applyDate'>
                    </div>
                </div>
                
                <div class='row mb-2'>
                    <div class='col-sm-3'>
                        <label class='form-label lead'>Appointment Date</label>
                    </div>
                    <div class='col-sm-9'>
                        <input class='form-control' type='date' name='schedDate'>
                    </div>
                </div>
                
                <div class='row mb-2'>
                    <div class='col-sm-3'>
                        <label class='form-label lead'>Job Board</label>
                    </div>
                    <div class='col-sm-9'>
                        <select class='form-select' name='source'>
                            <option></option>
                            <option value='Indeed'>Indeed</option>
                            <option value='LinkedIn'>LinkedIn</option>
                            <option value='Career Builder'>Career Builder</option>
                            <option value='Glassdoor'>Glassdoor</option>
                            <option value='Dice'>Dice</option>
                            <option value='Zip Recruiter'>Zip Recruiter</option>
                            <option value='Career Page'>Career Page</option>
                            <option value='Referral'>Referral</option>
                            <option value='Other'>Other</option>
                        </select>
                    </div>
                </div>
                
                <div class='row mb-2'>
                    <div class='col-sm-3'>
                        <label class='form-label lead'>Notes</label>
                    </div>
                    <div class='col-sm-9'>
                        <textarea class='form-control' name='notes' placeholder="Max 500 characters"></textarea>
                    </div>
                </div>
                
                <input type='submit' class='btn btn-secondary'id='submitApp' name='saveApp' value="Save">
                <button class='btn btn-secondary' id='clearForm'>Clear</button>
            </form>
        </div>
    </div>
    <br>
    <!-- Search applications-->
    <div class='input-group mb-3'>
        <input class='form-control' type='text' name='query' placeholder ='Status, Company or Position'>
        <a class='btn btn-outline-secondary' id='searchApps' href='?page=applications' style = 'text-decoration: none'>Search</a>
        <br>
    </div>
    <!--Display applications-->
    
            <table class='table table-hover border rounded bg-light'>
                <tr>
                    <th>Status</th>
                    <th>Company</th>
                    <th>Position</th>
                    <th>Salary</th>
                    <th>Experience</th>
                    <th>Link</th>
                    <th>Website</th>
                    <th>Resume</th>
                    <th>Applied 
                    <?php
                        if($_GET['sortApps'] == 'dateDesc'){
                            echo "<a href='?page=applications&sortApps=dateAsc'><i id='sort' class='fas fa-sort-down'></i></a>";
                        } else if($_GET['sortApps'] == 'dateAsc'){
                                echo "<a href='?page=applications'><i id='sort' class='fas fa-sort-up'></i></a>";
                        } else {
                            echo "<a href='?page=applications&sortApps=dateDesc'><i id='sort' class='fas fa-sort'></i></a>";
                        }
                    ?>
                    </th>
                    <th>Appointment</th>
                    <th>Contacts</th>
                    <th>Board</th>
                    <th>Notes</th>
                    <th>Actions</th>
                    
                </tr>
                <?php
                    if($_GET['searchApps']){
                        $obj = $_GET;
                        $obj['userID'] = $_SESSION['id'];
                       appsQuery($conn, $obj);
                    } else if($_GET['sortApps']){
                        $sort = $_GET['sortApps'];
                        showApps($conn, $sort);
                    } else {
                        showApps($conn, false);
                    }
                ?>
            </table>
        </main>
    	<script src="https://code.jquery.com/jquery-3.6.1.js"   integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="   crossorigin="anonymous"></script>
    	<script src="applications.js" type="application/javascript"></script>
</main>