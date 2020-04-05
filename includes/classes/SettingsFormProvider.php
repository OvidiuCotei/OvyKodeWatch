<?php
class SettingsFormProvider {

    public function createUserDetailsForm($firstName, $lastName, $email)
    {
        $firstNameInput = $this->createFirstNameInput($firstName);
        $lastNameInput = $this->createLastNameInput($lastName);
        $emailInput = $this->createEmailInput($email);
        $saveButton = $this->createSaveUserDetailsButton();

        return "<form action='settings.php' method='POST' enctype='multipart/form-data'>
                    <span class='title'>User details</span>
                    $firstNameInput
                    $lastNameInput
                    $emailInput
                    $saveButton
                </form>";
    }

    public function createUPasswordForm()
    {
        $allPasswordInput = $this->createPasswordInput("oldPassword", "Old password");
        $newPassword1Input = $this->createPasswordInput("newPassword", "New password");
        $newPassword2input = $this->createPasswordInput("newPassword2", "Confirm new password");
        $saveButton = $this->createSavePasswordButtom();

        return "<form action='settings.php' method='POST' enctype='multipart/form-data'>
                    <span class='title'>Update password</span>
                    $allPasswordInput
                    $newPassword1Input
                    $newPassword2input
                    $saveButton
                </form>";
    }

    private function createFirstNameInput($value)
    {
        if($value == null)
            $value = "";

        return "<div class='form-group'>
                    <input class='form-control' type='text' placeholder='First Name...' name='firstName' value='$value' required>
                </div>";
    }

    private function createLastNameInput($value)
    {
        if($value == null)
            $value = "";

        return "<div class='form-group'>
                    <input class='form-control' type='text' placeholder='Last Name...' name='lastName' value='$value' required>
                </div>";
    }

    private function createEmailInput($value) 
    {
        if($value == null)
        $value = "";

    return "<div class='form-group'>
                <input class='form-control' type='email' placeholder='Email...' name='email' value='$value' required>
            </div>";
    }

    private function createSaveUserDetailsButton()
    {
        return "<button type='submit' class='btn btn-primary' name='saveDetailsButton'>Save</button>";
    }

    private function createPasswordInput($name, $placeholder)
    {
        return "<div class='form-group'>
                    <input class='form-control' type='password' placeholder='$placeholder' name='$name' required>
                </div>";
    }

    private function createSavePasswordButtom()
    {
        return "<button type='submit' class='btn btn-primary' name='savePasswordButton'>Save</button>";
    }
}
?>