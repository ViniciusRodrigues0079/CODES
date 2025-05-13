<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IMC Form Test</title>
</head>
<body>

<h1>Calculadora de IMC</h1>
<br>
<form method="post" action="<?php echo ($_SERVER["PHP_SELF"]);?>">
    Peso, em Kg: <input type = number placeholder = "Digite aqui o seu peso" name = "peso" style="width: 500; text-align:center" required step="0.01">
    <br> <br>
    Altura, em Metros: <input type = number placeholder = "Digite aqui a sua altura" name = "altura" style="width: 500; text-align:center" required step="0.01">
    <br> <br>
    <input type = "submit" name = "Submit" value = "Enviar">
    <br> <br>
</form>
<?php
$peso = $_POST["peso"];
$altura = $_POST["altura"];
$imc = $peso / ($altura ** 2);
if ($imc > 0) {
    echo "Seu imc é de: ", (round($imc, 1)), "<br>";
 if ($imc < 18.5) {
    echo "Você está abaixo do peso ideal.";
} elseif ($imc >= 18.5 or $imc <= 24.9) {
    echo "Você está com o peso adequado para a sua altura.";
} elseif ($imc >= 25 or $imc <= 29.9) {
    echo "Você está sobrepeso.";
} elseif ($imc >= 30 or $imc <= 39.9) {
    echo "Você está obeso.";
} else {
    echo "Você está com obesidade grave.";
}
} else {
    echo "Erro";
};
?>    
</body>
</html>