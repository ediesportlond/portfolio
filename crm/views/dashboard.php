<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<?php
    if($_SESSION['id'] == ''){
        die('You are not logged in. <a href="'.$siteURL.'/crm">Return home</a>');
    }
?>
<main class='container-md text-center'>
    <h1 class='display-1'>Dashboard</h1>
    <div class='row mb-2 g-2'>
        <div class='col-sm-4'>
            <div class='p-1 border rounded bg-light border-primary'>
            <h2>Applications </h2>
            <?php
                $obj = [
                    'user_id' => $_SESSION['id'],
                    'count' => 'applications'
                ];
                echo '<h3 style="font-size: 15vw">'.getCount($conn, $obj)[0]['COUNT(`id`)'].'</h3>';
            ?>
            </div>
        </div>
        <div class='col-sm-4'>
            <div class='p-1 border rounded bg-light border-primary'>
            <h2>Contacts</h2>
            <?php
                $obj = [
                    'user_id' => $_SESSION['id'],
                    'count' => 'contacts'
                ];
                echo '<h3 style="font-size: 15vw">'.getCount($conn, $obj)[0]['COUNT(`id`)'].'</h3>';
            ?>
            </div>
        </div>
        <div class='col-sm-4'>
            <div class='p-1 border rounded bg-light border-primary'>
            <h2>Rejections</h2>
            <?php
                $obj = [
                    'user_id' => $_SESSION['id'],
                    'count' => 'rejected'
                ];
                echo '<h3 style="font-size: 15vw">'.getCount($conn, $obj)[0]['COUNT(`id`)'].'</h3>';
            ?>
            </div>
        </div>
    </div>
    <div class='row g-2'>
        <div class='col-sm-4'>
            <div class='p-1 border rounded bg-light border-primary'>
            <h2>Interviews </h2>
            <?php
                $obj = [
                    'user_id' => $_SESSION['id'],
                    'count' => 'interview'
                ];
                echo '<h3 style="font-size: 15vw">'.getCount($conn, $obj)[0]['COUNT(`id`)'].'</h3>';
            ?>
            </div>
        </div>
        <div class='col-sm-4'>
            <div class='p-1 border rounded bg-light border-primary'>
            <h2>Offers</h2>
            <?php
                $obj = [
                    'user_id' => $_SESSION['id'],
                    'count' => 'offers'
                ];
                echo '<h3 style="font-size: 15vw">'.getCount($conn, $obj)[0]['COUNT(`id`)'].'</h3>';
            ?>
            </div>
        </div>
        <div class='col-sm-4'>
            <div class='p-1 border rounded bg-light border-primary'>
            <h2>Top Resume</h2>
            <?php
                $obj = [
                    'user_id' => $_SESSION['id'],
                    'count' => 'resume'
                ];
                $vID = resumeConversions($conn);
                if($vID == null){
                    echo '<span class="lead"> Not enough data yet. </span>';
                } else {
                    $location = getResumeLocation($conn, $vID)['location'];
                    echo '<a class="lead" href="'.$location.'" target="_blank" style="text-decoration:none; font-size: 12.4vw">V'.$vID.'</a><br>';
                }
            ?>
            </div>
        </div>
    <div class='border rounded bg-light border-primary'>
        <h2>Upcoming Appointments</h2>
        <div class='text-start'>
            <?php
                $appointments = weeksAppointments($conn);
                
                if(sizeof($appointments) == 0){
                    echo '<span class="lead"> No appointments next 7 days. </span>';
                } else {
                    for($i = 0; $i < sizeof($appointments); $i++){
        
                        $date=date_create($appointments[$i]['appointment']);
                        $company = $appointments[$i]['company'];
                        echo '<a class="lead" href="?page=applications&searchApps=true&query='.$company.'" style="text-decoration:none">'.date_format($date,"m/d/Y").' '.$company.'</a><br>';
                    }
                }
            ?>
        </div>
    </div>
</main>