<?php
require_once("includes/config.php");
require_once("includes/classes/FormSanitizer.php");
require_once("includes/classes/Account.php");
require_once("includes/classes/Constants.php");

$account = new Account($con);

if(isset($_POST["submitButton"]))
{
    $firstName = FormSanitizer::sanitizeFormString($_POST["firstName"]);
    $lastName = FormSanitizer::sanitizeFormString($_POST["lastName"]);
    $username = FormSanitizer::sanitizeFormUsername($_POST["username"]);
    $email = FormSanitizer::sanitizeFormEmail($_POST["email"]);
    $email2 = FormSanitizer::sanitizeFormEmail($_POST["email2"]);
    $password = FormSanitizer::sanitizeFormPassword($_POST["password"]);
    $password2 = FormSanitizer::sanitizeFormPassword($_POST["password2"]);

    $wasSuccessfull = $account->register($firstName, $lastName, $username, $email, $email2, $password, $password2);

    if($wasSuccessfull)
    {
        $_SESSION["userLoggedIn"] = $username;
        header("Location: index.php");
    }
}

function getInputValue($name){
    if(isset($_POST[$name]))
    {
        echo $_POST[$name];
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ovy Kode Watch</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</head>
<body>
    <div class="signInContainer">
        <div class="column">
            <div class="header">
                <img src="assets/images/icons/OvyKodeWatchLogo.png" alt="Ovy Kode Watch" title="Ovy Kode Watch">
                <h3>Sign Up</h3>
                <span>to continue to Ovy Kode Watch</span>
            </div>
            <div class="loginForm">
                <form action="signUp.php" method="POST">
                    <?php echo $account->getError(Constants::$firstNameCharacters); ?>
                    <input type="text" name="firstName" placeholder="First Name" value="<?php getInputValue('firstName'); ?>" autocomplete="off" required>
                    <?php echo $account->getError(Constants::$lastNameCharacters); ?>
                    <input type="text" name="lastName" placeholder="Last Name" value="<?php getInputValue('lastName'); ?>" autocomplete="off" required>
                    <?php echo $account->getError(Constants::$usernameCharacters); ?>
                    <?php echo $account->getError(Constants::$usernameTaken); ?>
                    <input type="text" name="username" placeholder="Username" value="<?php getInputValue('username'); ?>" autocomplete="off" required>
                    <?php echo $account->getError(Constants::$emailsDoNotMatch); ?>
                    <?php echo $account->getError(Constants::$emailInvalid); ?>
                    <?php echo $account->getError(Constants::$emailTaken); ?>
                    <input type="email" name="email" placeholder="Email" value="<?php getInputValue('email'); ?>" autocomplete="off" required>
                    <input type="email" name="email2" placeholder="Confirm Email" value="<?php getInputValue('email2'); ?>" autocomplete="off" required>
                    <?php echo $account->getError(Constants::$passwordsDoNotMatch); ?>
                    <?php echo $account->getError(Constants::$passwordsNotAlphaNumeric); ?>
                    <?php echo $account->getError(Constants::$passwordLength); ?>
                    <input type="password" name="password" placeholder="Password" autocomplete="off" required>
                    <input type="password" name="password2" placeholder="Confirm Password" autocomplete="off" required>
                    <input type="submit" name="submitButton" value="SUBMIT">
                </form>
            </div>
            <a class="signInMessage" href="signIn.php">Already heave account? Sign In here!</a>
        </div>
    </div>
</body>
</html>