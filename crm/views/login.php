<style>
    .form-width{
        max-width: 550px;
        margin-left: auto;
        margin-right: auto;
    }
</style>
<div class='container-md text-center'>
    <div class='border rounded mt-4 p-4 bg-light'>
        <h1 class='display-1'>Login</h1>
        <form action='?page=login' method='post'>
            <label class='form-label'>Email</label>
            <br>
            <input class='form-control form-control-lg form-width' type='email' name='email' required>
            <br>
            <label class='form-label'>Password</label>
            <br>
            <input class='form-control form-control-lg form-width' type='password' name='password' required>
            <br>
            <input class='btn btn-primary' type='submit' name='login' value='Login'><br>
            <a class='form-text' href='?page=signup'>Click here to create an account.</a><br>
            <a class='form-text' href='?page=otp'>Forgot password?</a>
        </form>
        <br>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.1.js"   integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="   crossorigin="anonymous"></script>
<script>
    $('[name=login]').on('click', function (e){
        const emailFix = $('[name=email]').val().trim().toLowerCase();
        $('[name=email]').val(emailFix);
    })
</script>