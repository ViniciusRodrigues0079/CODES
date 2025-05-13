class Cachorro:
    def  __init__(self, nome, raça, comida, energia):
        self.nome = nome
        self.raça = raça
        self.comida = comida
        self.energia = energia
        self.acordado = True
        self.feliz = True
    def comer (self):
        self.comida -= 1
        print (f"{self.nome} está comendo.")
    def dormir (self):
        self.energia = 100
        self.acordado = False
        print (f"{self.nome} está dormindo.")
    def acordar (self):
        self.acordado = True
        print (f"{self.nome} está acordado.")
    def brincar (self):
        if self.energia <= 20:
            print (f"{self.nome} está muito cansado para brincar.")
        else:
            self.energia -= 20
            self.feliz = True
            print (f"{self.nome} está feliz.")
    def ignorar (self):
        self.feliz = False
        print (f"{self.nome} está triste.")
    def latir (self):
        if self.energia == 0:
            print (f"{self.nome} não pode latir agora, ele precisa dormir.")
        else:
            if self.acordado:
                print (f"{self.nome}: Au!")
                self.energia -= 1
            else:
                print (f"{self.nome} não pode latir agora, {self.nome} está dormindo.")
cachorro1 = Cachorro("Batata", "Bulldog", 22, 100)
cachorro2 = Cachorro("Reed", "Pastor alemão", 5, 100)