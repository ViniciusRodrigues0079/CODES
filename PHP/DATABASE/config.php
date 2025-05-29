<?php

$db_host = 'localhost';

$db_user= 'root';

$db_pass = "";

$db_name = "companyhr";

$conn = new mysqli(hostname: $db_host, username: $db_user, password: $db_pass, database: $db_name);

if ($conn->connect_error) {
    die("Conexão falhou: ($conn->connect_error)");
};

