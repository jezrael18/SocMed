<?php
session_start();
require_once('backend.php');
if (isset($_POST['choice'])) {
    switch ($_POST['choice']) {
        case 'register':
            $register = new backend();
            echo $register->doRegister(
                $_POST['first_name'],
                $_POST['last_name'],
                $_POST['email_addr'],
                $_POST['password'],
                $_POST['cpassword']
            );
            break;
        case 'login':
            $login = new backend();
            echo $login->doLogin(
                $_POST['email'],
                $_POST['password']
            );
            break;
        case 'locked':
            $lock = new backend();
            echo $lock->lockUser(
                $_POST['attempt'],
                $_POST['email']
            );
            break;
        case 'logout':
            session_unset();
            session_destroy();
            echo "200";
            break;
        default:
            # code...
            break;
    }
}
