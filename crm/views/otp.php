<style>
    .form-width{
        max-width: 550px;
        margin-left: auto;
        margin-right: auto;
    }
</style>
<main class='container-md text-center'>
    <div class='border rounded bg-light mt-4 p-4'>
    <form method='post' action='?page=otp'>
        <p>Enter your email below to receive a password reset link.</p>
        <p>Remember to check your spam folder for the link if you can't find it in your inbox.</p>
        <label class='form-label'>Enter your email</label>
        <input class='form-control form-control-lg form-width mb-4' name='email' type='email'>
        <input class='btn btn-primary' type='submit' name='otp' value='Submit'>
    </form>
    </div>
</main>