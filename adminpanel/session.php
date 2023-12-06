<?php
    //mengecek apakah nilai login false
    //jika false akan dilempar ke halaman login.php
    session_start();
    if($_SESSION['login']==false){
        header('location: login.php');
    }
?>