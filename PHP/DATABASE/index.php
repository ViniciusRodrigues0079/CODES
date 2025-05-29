<h1>TELA INICIAL</h1>
<?php
include 'config.php';
$sql = "SELECT * FROM companyHR.employees;";
$result = mysqli_query(
    mysql: $conn,
    query: $sql);

while($row = mysqli_fetch_assoc($result)){
    echo "Nome: ", $row['em_name'], "<br>";
    echo "Salário: ", $row["salary"], "<br><br>";
};