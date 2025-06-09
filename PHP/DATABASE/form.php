<?php
include 'config.php';
if ($_SERVER["REQUEST_METHOD"] == $_POST) {
    $em_name = $_POST['em_name'];
    $gender = $_POST['gender'];
    $tel_num = $_POST['contact_number'];
    $salary = $_POST['salary'];
    $years_in_company = $_POST['years_in_company'];

    $sql = "INSERT INTO employees (em_name, gender, tel_num, salary, years_in_company) VALUES ( '$em_name', '$gender', '$tel_num', $salary, $years_in_company)";
}
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Novo Cadastro de Employee</title>
</head>
<body>
    <h1>Formulário para Novo Cadastro</h1>
    <form method="post" action="">
        <label for="em_name">Nome:</label><br>
        <input type="text" id="em_name" name="em_name" required><br><br>

        <label>Gênero:</label><br>
        <input type="radio" id="male" name="gender" value="M" required>
        <label for="male">Masculino</label><br>
        <input type="radio" id="female" name="gender" value="F" required>
        <label for="female">Feminino</label><br><br>

        <label for="contact_number">Número de Contato:</label><br>
        <input type="text" id="contact_number" name="contact_number"><br><br>

        <label for="salary">Salário:</label><br>
        <input type="number" step="0.01" id="salary" name="salary" required><br><br>

        <label for="years_in_company">Anos na Empresa:</label><br>
        <input type="number" id="years_in_company" name="years_in_company" required><br><br>

        <input type="submit" value="Cadastrar">
    </form>

    <br>
    <a href="index.php">
        <button type="button">Voltar ao Início</button>
    </a>
</body>
</html>