<?php
class NavigationMenuProvider{

    private $con, $userLoggedIn;

    public function __construct($con, $userLoggedIn)
    {
        $this->con = $con;
        $this->userLoggedIn = $userLoggedIn;
    }

    public function create(){

    }

    private function createNavItem($text, $icon, $link){
        return "<div class='navigationItem'>
        <a href='$link'>
            <img src='$icon'>
            <span>$text</span>
        </a>
        </div>";
    }
}
?>