<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IMC Form Test</title>
</head>
<body style="background-color: lightgray; ">

<h1  style="text-align: center; font-family: Arial, Helvetica, sans-serif; color: powderblue; background-color: white; margin-bottom: 0px; width: 400px; margin-left: 500px;">Calculadora de IMC</h1>
<form method="post" action="<?php echo $_SERVER["PHP_SELF"];?>" style="background-color: white; height: 200px; width: 400px; margin-top: 0px; text-align: right; padding-top: 50px; margin-left: 500px;">
    <label style ="font-family: Arial, Helvetica, sans-serif; margin-right: 35px;">Peso, em Kg: </label><input type = number placeholder = "Digite aqui o seu peso" name = "peso" style="width: 500; text-align:center; font-family: Arial, Helvetica, sans-serif; margin-right: 30px; width: 200px;" required step="0.01">
    <br> <br>
    <label style ="font-family: Arial, Helvetica, sans-serif;">Altura, em Metros: </label><input type = number placeholder = "Digite aqui a sua altura" name = "altura" style="width: 500; text-align:center; font-family: Arial, Helvetica, sans-serif; margin-right: 30px; width: 200px; margin-top:20px;" required step="0.01">
    <br> <br>
    <input type = "submit" name = "Submit" value = "Enviar" style="margin-right: 30px; width: 340px; background-color: blue; border: 1px, black, solid; color: white; border-radius: 4px; margin-top:30px; margin-bottom: 10px;">
    <br>

<?php
$peso = $_POST["peso"];
$altura = $_POST["altura"];
$imc = $peso / ($altura ** 2);
if ($imc > 0) {
    echo "Seu imc é de: ", round($imc, 1), "<br>";
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
</form>
</body>
</html>