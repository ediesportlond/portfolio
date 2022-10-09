<style>
    .requirements{
        color: red;
        font-size:10pt;
    }
    .form-width{
        max-width: 550px;
        margin-left: auto;
        margin-right: auto;
    }
</style>
<div class='container-md text-center'>
    <div class='border rounded bg-light mt-4 p-4'>
        <h1 class='display-1'>Sign up</h1>
        <form id='#signup' action='?page=login' method='post'>
            <label class='form-label'>First Name</label>
            <br>
            <input class='form-control form-control-lg form-width' name='first' required>
            <br>
            <label class='form-label'>Last Name</label>
            <br>
            <input class='form-control form-control-lg form-width' name='last' required>
            <br>
            <label class='form-label'>Email</label>
            <br>
            <input class='form-control form-control-lg form-width' type='email' name ='email' required>
            <br>
            <label class='form-label'>Password</label>
            <br>
            <input class='form-control form-control-lg form-width' type='password' name='newPassword' required>
            <br>
            <span>Password must meet all requirements below:</span>
                <div class="requirements">
                    <span id="length" class='form-text'>8 characters</span><br>
                    <span id="lower" class='form-text'>Lower case letters</span><br>
                    <span id="upper" class='form-text'>Upper case letters</span><br>
                    <span id="number" class='form-text'>Number</span><br>
                    <span id="symbol" class='form-text'>Symbol</span><br>
                </div> 
            <label class='form-label' id='verify'>Verify Password</label>
            <br>
            <input class='form-control form-control-lg form-width' type='password' name='verifyPass' required>
            <br>        
            <input class='btn btn-primary' type='submit' name='signup' value='Sign up'><br>
            <a class='form-text' href='?page=login'>Click here to sign in.</a>
        </form>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.1.js"   integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="   crossorigin="anonymous"></script>
<script>
    let passwordValid = false;
    let passwordMatch = false;
    
    //Data validation for signup
    $('[name=newPassword]').on('keyup', function(){
    
        let password = $("[name=newPassword]").val();
    
        let passLength = password.length >= 8;
        
        if(passLength){
            $("#length").animate({fontSize: "12pt"},50);
            $("#length").css("color", "green");
        } else {
            $("#length").animate({fontSize: "10pt"},50);
            $("#length").css("color", "red");
        };
    
        let passSmallLetters =/[?=a-z]/.test(password);
    
        if(passSmallLetters){
            $("#lower").animate({fontSize: "12pt"},50);
            $("#lower").css("color", "green");
        } else {
            $("#lower").animate({fontSize: "10pt"},50);
            $("#lower").css("color", "red");
        };
    
        let passCapital =/[?=A-Z]/.test(password);
    
        if(passCapital){
            $("#upper").animate({fontSize: "12pt"},50);
            $("#upper").css("color", "green");
        } else {
            $("#upper").animate({fontSize: "10pt"},50);
            $("#upper").css("color", "red");
        };
    
        let passNumber =/[?=0-9]/.test(password);
    
        if(passNumber){
            $("#number").animate({fontSize: "12pt"},50);
            $("#number").css("color", "green");
        } else {
            $("#number").animate({fontSize: "10pt"},50);
            $("#number").css("color", "red");
        };
    
        let passSymbol = /[^?=A-z0-9]/.test(password);
        //These symbols won't work \\^_=[]?`
        //These symbols work ~!@#$%&*()-+{}|:;\"'<>,./
    
        if(passSymbol){
            $("#symbol").animate({fontSize: "12pt"},50);
            $("#symbol").css("color", "green");
        } else {
            $("#symbol").animate({fontSize: "10pt"},50);
            $("#symbol").css("color", "red");
        };
    
        let rejectPassword = /password/i.test(password);
    
        passLength && passSmallLetters && passCapital && passNumber && passSymbol && !rejectPassword ? passwordValid =true : passwordValid = false;
        
        if($('[name=newPassword]').val() === $('[name=verifyPass]').val()){
            $("#verify").animate({fontSize: "12pt"},50);
            $("#verify").css("color", "green");
            passwordMatch = true;
        } else {
            $("#verify").animate({fontSize: "10pt"},50);
            $("#verify").css("color", "red");
            passwordMatch = false;
        };
        
    })
    
    //function for password verification
    $('[name=verifyPass]').on('keyup', function(){
        if($('[name=newPassword]').val() === $('[name=verifyPass]').val()){
            $("#verify").animate({fontSize: "12pt"},50);
            $("#verify").css("color", "green");
            passwordMatch = true;
        } else {
            $("#verify").animate({fontSize: "10pt"},50);
            $("#verify").css("color", "red");
            passwordMatch = false;
        };
    })
    
    $('[name=signup]').on('click',function(e){
        const emailFix = $('[name=email]').val().trim().toLowerCase();
        $('[name=email]').val(emailFix);
        
        if(!passwordValid || !passwordMatch){
            e.preventDefault();
            alert('Ensure all fields are completed correctly.');
        }
    })
</script>