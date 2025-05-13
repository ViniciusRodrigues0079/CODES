class Carro:
    def  __init__(self, modelo, ano, cor, combustivel, velocidade):
        self.modelo = modelo
        self.ano = ano
        self.cor = cor
        self.combustivel = combustivel
        self.velocidade = velocidade
        self.ligado = False

    def ligar (self):
        self.ligado = True
        print (f"{self.modelo} agora está ligado.")

    def desligar (self):
        self.ligado = False
        print (f"{self.modelo} agora está desligado.")

    def acelerar (self):
        if self.ligado:
            if self.combustivel == 0:
                print ("Seu tanque de combustível está vazio. Abasteça-o para andar.")
            else:
                self.velocidade += 10
                self.combustivel -= 5
                print (f"Acelerando {self.modelo} em 10 km/h.")
        else:
            print ("É preciso ligar seu carro antes de acelerar!")

    def frear (self):
        if self.ligado:
            print (f"reduzindo a velocidade de {self.modelo} em 10 km/h.")
        else:
            print (f"É necessário ligar seu carro para frear!")

    def abastecer (self):
        self.combustivel = 100
        print ("Tanque abastecido!")

    def buzinar (self):
        print ("BEEP BEEP!")

    def status (self):
        print (f"""
        Modelo do carro: {self.modelo}.
        Ano do carro: {self.ano}.
        Cor do carro: {self.cor}.
        Combustível disponível: {self.combustivel} litros.
        Velocidade atual: {self.velocidade} km/h.
        """)
        if self.ligado:
            print ("Estado atual: Ligado.")
        else:
            print ("Estado atual: Desligado.")

carro1 = Carro("BMW 320i", 2023, "Azul escuro", 70, 0)