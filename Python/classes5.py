class Veiculo:
    def __init__(self, modelo, ano):
        self.modelo = modelo
        self.ano = ano

class Carro (Veiculo):
    def __init__(self, modelo, ano):
        super().__init__(modelo, ano)

    def ligar (self):
        print (f"{self.modelo} agora está ligado.")

    def desligar (self):
        print (f"{self.modelo} agora está desligado.")

    def buzinar (self):
        print (f"{self.modelo}: BEEP BEEP!")

    def abrir_porta(self):
        print (f"Porta do carro {self.modelo} está aberta.")

    def fechar_porta(self):
        print(f"Porta do carro {self.modelo} está fechada.")

class Moto (Veiculo):
    def __init__(self, modelo, ano):
        super().__init__(modelo, ano)

    def ligar (self):
        print (f"{self.modelo} agora está ligado.")

    def desligar (self):
        print (f"{self.modelo} agora está desligado.")

    def buzinar (self):
        print (f"{self.modelo}: BEEP BEEP!")

    def empinar (self):
        print (f"{self.modelo} está empinado agora.")