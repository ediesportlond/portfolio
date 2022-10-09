<?php
    if($_SESSION['id'] == ''){
        die('You are not logged in. <a href="'.$siteURL.'/crm">Return home</a>');
    }
?>

<main class='container-md text-center'>
    <h1 class='display-1'>Contacts</h1>
        <a class="btn btn-primary mb-4" data-bs-toggle="collapse" href="#contactCollapse" role="button" aria-expanded="false" aria-controls="contactCollapse">
            Add New
        </a>
        <br>
      
    <!-- Collapsable div-->
    <div class='collapse' id='contactCollapse'>
        <div class='card card-body'>
            
<!--Form to add/edit-->
            <h3>Add or edit a contact</h3>
            <form method='post' action='?page=contacts'>
            
                <div class='row mb-2'>
                    <div class='col-sm-3'>
                        <label class='form-label'>Company</label>
                    </div>
                    <div class='col-sm-9'>
                        <input class='form-control' type='text' name='comp'>
                    </div>
                </div>
                
                <div class='row mb-2'>
                    <div class='col-sm-3'>
                        <label class='form-label'>Title</label>
                    </div>
                    <div class='col-sm-9'>
                        <input class='form-control' type='text' name='title'>
                    </div>
                </div>
                
                <div class='row mb-2'>
                    <div class='col-sm-3'>
                        <label class='form-label'>Name</label>
                    </div>
                    <div class='col-sm-9'>
                        <input class='form-control' type='text' name='name'>
                    </div>
                </div>
                
                <div class='row mb-2'>
                    <div class='col-sm-3'>
                        <label class='form-label'>Cell</label>
                    </div>
                    <div class='col-sm-9'>
                        <input class='form-control'type='tel' name='cellNum'>
                    </div>
                </div>
                
                <div class='row mb-2'>
                    <div class='col-sm-3'>
                        <label class='form-label'>Office</label>
                    </div>
                    <div class='col-sm-9'>
                        <input class='form-control'type='tel' name='offNum'>
                    </div>
                </div>
                
                <div class='row mb-2'>
                    <div class='col-sm-3'>
                        <label class='form-label'>Email</label>
                    </div>
                    <div class='col-sm-9'>
                        <input class='form-control'type='email' name='email'>
                    </div>
                </div>
                
                <div class='row mb-2'>
                    <div class='col-sm-3'>
                        <label class='form-label'>Notes</label>
                    </div>
                    <div class='col-sm-9'>
                        <textarea class='form-control' name='notes' placeholder="Max 250 characters"></textarea>
                    </div>
                </div>
                
                <input type='submit' id='submitContacts' name='saveContact' value='Save'>
                <button id='clearForm'>Clear</button>
                
            </form>
        </div>
    </div>
    <br>

<!-- Search contacts-->
    <div class='input-group mb-3'>
        <input class='form-control' type='text' name='query' placeholder ='Company, Title or Name.'>
        <a class='btn btn-outline-secondary' id='searchContacts' href='?page=contacts' style = 'text-decoration: none'>Search</a>
        <br>
    </div>
        
<!--Display contacts-->

        <table class='table table-hover border rounded bg-light'>
            <tr>
                <th>Company</th>
                <th>Title</th>
                <th>Name</th>
                <th>Cell</th>
                <th>Office</th>
                <th>Email</th>
                <th>Notes</th>
                <th>Actions</th>
            </tr>
            <?php
                if($_GET['searchContacts']){
                    $obj = $_GET;
                    $obj['userID'] = $_SESSION['id'];
                   contactsQuery($conn, $obj);
                } else {
                    showContacts($conn);
                }
            ?>
        </table>
</main>
<script src="https://code.jquery.com/jquery-3.6.1.js"   integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="   crossorigin="anonymous"></script>
<script src="contacts.js" type="application/javascript"></script>