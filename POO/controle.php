<?php
  include("Carro.php");

  $placa = "ASV-1234";
  $numChassi= "123456464";
  $valor = 456;

  $gol = new Carro($placa, $numChassi, $valor);

  $gol->monitor();
  $gol->ligar();
  $gol->acelerar();
  $gol->acelerar();
  $gol->acelerar();
  $gol->acelerar();
  $gol->diminuirVelocidade();
  $gol->diminuirVelocidade();
  $gol->diminuirVelocidade();
  $gol->parar();
  $gol->desligar();

?>
