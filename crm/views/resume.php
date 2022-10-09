<?php
    if($_SESSION['id'] == ''){
        die('You are not logged in. <a href="'.$siteURL.'/crm">Return home</a>');
    }
?>
<style>
    .form-width{
        max-width: 550px;
        margin-left: auto;
        margin-right: auto;
    }
    .resume-width{
        max-width: 1200px;
        margin-left: auto;
        margin-right: auto;
    }
</style>
<main class='container-md text-center'>
    <h1 class='display-1'>Resume Page</h1>
    <form action="?page=resume" method="post" enctype="multipart/form-data">
        <input class='form-control form-width' type='file' name='resume'>
        <br>
        <textarea class='form-control form-width' name='notes' placeholder='Add notes regarding this version. What changes did you make?'></textarea>
        <br>
        <input class='btn btn-primary' type='submit'>
    </form>
    <div class='resume-width border rounded text-start mt-4 pt-3 bg-light'>
    <?php
        //showResumes($conn);
        $resumes = searchDB($conn, 'resume');

        if(sizeof($resumes) == 0){
           echo '<td>No results.</td>';
        } else {
            for($i = 0; $i < sizeof($resumes); $i++){
                $id = $resumes[$i]['id'];
                $vID = $resumes[$i]['version id'];
                echo '<div class="row">
                        <div class="col-md-3">
                            <button class="deleteResume btn-close me-2" name="'.$id.'" aria-label="Close"></button>
                            <a class="'.$id.' h3 me-2" id="'.$id.'" href="'.$resumes[$i]['location'].'" target="_blank">Version '.$vID.'</a>
                       </div>
                        <div class="col-md-9">
                            <span class="'.$id.' lead">'.$resumes[$i]['notes'].'<br><br></span>
                        </div> 
                    </div>';
            }
        }
    ?>
    </div>
</main>
<script src="https://code.jquery.com/jquery-3.6.1.js"   integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="   crossorigin="anonymous"></script>
<script>
    $('[type=submit]').on('click', function(e){
        let noteLen = $('[name=notes]').val().length;

        if(noteLen > 250){
            alert('Max note length is 250 characters. Your note is '+noteLen+' long.');
            e.preventDefault();
        }
    })
    
    
    $('.deleteResume').on('click', function(){
    
        let confirmation = confirm('Are you sure you want to delete this resume version?');
        
        if (!confirmation){
            return null;
        }
        
        //ajax to delete
            let resumeID = $(this).attr('name');
            let formData = {
                deleteResume: true,
                resumeID: resumeID,
                path: $('#'+resumeID).attr('href')
            };
            
            $.ajax({
              method: "POST",
              url: "actions.php",
              data: formData
            })
             
            //UPDATE THIS LINE
            $('.'+formData.resumeID).remove();
            $(this).remove();
    })
</script>