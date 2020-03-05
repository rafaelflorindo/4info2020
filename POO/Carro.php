<?php

class Carro{
  private $placa, $numChassi;
  private $valor, $status, $velocidade;

  public function __construct($placa1, $numChassi1, $valor1){
    $this->placa = $placa1;
    $this->numChassi = $numChassi1;
    $this->valor = $valor1;
    $this->status = 0;
  }
  public function monitor(){
    echo "<br>Placa = " . $this->placa;
    echo "<br>Número Chassi = " . $this->numChassi;
    echo "<br>Valor R$ = " . $this->valor;
    echo "<br>Status = " . $this->status;
    echo "<br>Velocidade = " . $this->velocidade;
  }
  public function ligar(){
    if($this->status==0){
        $this->status = 1;
        $this->velocidade = 0;
        echo "<br>Carro ligado!";
    }else {
        echo "<br>O Carro já está ligado!";
    }
  }
  public function desligar(){
    if(($this->status == 1) && ($this->velocidade == 0)){
        $this->status = 0;
        echo "<br>Carro desligado!";
    }else{
        echo "<br>O Carro já está desligado!";
    }
  }
  public function diminuirVelocidade(){

    if($this->velocidade > 0){
      $this->velocidade = $this->velocidade - 10;
    }
    echo "<br>Veiculo Diminuiu a velocidade " . $this->velocidade . " km/h";
  }
  public function parar(){
    if($this->velocidade > 0){
      for($inicio=$this->velocidade;$inicio > 0; $inicio--){
        $this->velocidade=$this->velocidade-1;
        echo "<br>Velocidade = " . $this->velocidade . " km/h";
      }
    }
    echo "<br>Carro parado!" . $this->velocidade . " km/h";
  }
  public function acelerar(){
    if($this->velocidade < 110){
      $this->velocidade = $this->velocidade + 10;
      echo "<br>Acelerou para " . $this->velocidade . " km/h";
    }else{
        echo "<br>Limite máximo de velocidade atingida!";
    }
  }
}
#sudo /opt/lampp/lampp start
?>
