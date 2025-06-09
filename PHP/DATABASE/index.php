<h1>TELA INICIAL</h1>
<?php
include 'config.php';
$sql = "SELECT * FROM companyHR.employees;";
$result = mysqli_query(
    mysql: $conn,
    query: $sql);
echo "<table
border='1' 
style='
font-family: Arial, Helvetica, sans-serif;
text-align: center;
margin-left: 400px;
'>";
echo "<tr>
<th>id</th>
<th>Nome</th>
<th>Telefone</th>
<th>Salário</th>
<th>Tempo na empresa (anos)</th></tr>";

while($row = mysqli_fetch_assoc($result)){
    /*echo '<tr><td>' . htmlspecialchars($row['em_name']) . '</tr></td>';*/
    echo '<tr>
    <td>' . htmlspecialchars($row['id']) . '</td>
    <td>' . htmlspecialchars($row['em_name']) . '</td>
    <td>' . htmlspecialchars($row['tel_num']) . '</td>
    <td>' . htmlspecialchars($row['salary']) . '</td>
    <td>' . htmlspecialchars($row['years_in_company']) . '</td>';
    
};

echo "</table>";

?>