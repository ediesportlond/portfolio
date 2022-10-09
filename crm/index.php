<?php
    session_start();
    date_default_timezone_set("US/Eastern");
    
    //These two lines will display php errors. Not to be left on live site.
    //ini_set('display_errors', 1);
    //error_reporting(E_ALL);
    
    $siteURL = 'http://itseddies.com';

    include('actions.php');
    include('views/header.php');

    if($_GET['page'] == 'contacts'){

        include('views/contacts.php');

    } else if($_GET['page'] == 'applications'){

        include('views/applications.php');

    } else if($_GET['page'] == 'resume'){

        include('views/resume.php');

    } else if($_GET['page'] == 'dashboard'){

        include('views/dashboard.php');

    } else if($_GET['page'] == 'login'){

        include('views/login.php');

    } else if($_GET['page'] =='signup'){

        include('views/signup.php');

    } else if($_GET['page'] =='password'){

        include('views/password.php');

    } else if($_GET['page'] =='otp'){

        include('views/otp.php');

    } else {

        include('views/home.php');

    }

    include('views/footer.php');