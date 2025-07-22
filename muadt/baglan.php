<?php
    $dsn = 'mysql:host=localhost;dbname=hastane;charset=utf8';
    $username = 'root';
    $password = '';

    $db = new PDO($dsn, $username, $password);

    try{
        $db = new PDO($dsn, $username, $password);
    } catch(PDOException $e){
        $e -> getMessage();
    }
