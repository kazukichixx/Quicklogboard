<?php
session_start();

function checkSession() {
    if (!isset($_SESSION['UserID'])) {
        header('Location: index.php');
        exit();
    }
}
?>