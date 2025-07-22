<?php
session_start();

if (isset($_POST['giris'])) {
    if ($_POST['kadi'] == "bozova"  && $_POST['sifre'] == "741852") {
        //sesion atama işlemleri
        $_SESSION['kadi'] = $_POST['kadi'];
        $_SESSION['sifre'] = $_POST['sifre'];
        if (isset($_POST['hatirla'])) {
            //cookie atama işlemi
            // setcookie("user", "bozova", strtotime("+1 day"));
            // setcookie("pass", "12345", strtotime("+1 day"));
            setcookie("user", "bozova", time() + (60 * 60 + 24));
            setcookie("pass", "741852", time() + (60 * 60 + 24));
        } else {
            setcookie("user", "bozova", time() - (60 * 60 + 24));
            setcookie("pass", "741852", time() - (60 * 60 + 24));
        }
        header("Location:muadt/muayene.php?durum=true");
        exit;
    } else {
        header("Location:index.php?durum=false");
        exit;
    }
}
