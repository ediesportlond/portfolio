<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Seekers CRM</title>
        
        <!--Bootstrap-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            a{
                text-decoration: none;
            }
        </style>
    </head>

<!-- Navigation -->

    <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasWithBackdrop" aria-labelledby="offcanvasWithBackdropLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasWithBackdropLabel">CRM</h5>
        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      
      <div class="offcanvas-body">
        <ul class='list-group list-group-flush'>
            <li class='list-group-item'><a href='index.php'>Home</a></li>
            <?php 
                //Will show if not logged in
                if($_SESSION['id'] == ''){
                    echo "<li class='list-group-item'><a href='?page=login'>Login/Sign up</a></li>";
                }
                //Will show only when logged in
                if($_SESSION['id'] != ''){
                    echo "<li class='list-group-item'><a href='?page=dashboard'>Dashboard</a></li>
                          <li class='list-group-item'><a href='?page=applications'>Applications</a></li>
                          <li class='list-group-item'><a href='?page=contacts'>Contacts</a></li>
                          <li class='list-group-item'><a href='?page=resume'>Resume</a></li>
                          <li class='list-group-item'><a href='?page=password'>Change Password</a></li>
                          <li class='list-group-item'><a href='?page=home&logout=true'>Log out</a></li>";
                }
            ?>
        </ul>
      </div>
    </div>
    <div class='text-end border-bottom' style='min-height: 55px'>
      <button class="btn btn-dark ms-2 mt-2 float-start" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasWithBackdrop" aria-controls="offcanvasWithBackdrop">Navigation</button>
      <span class='display-5'>Seekers CRM </span>
     </div>