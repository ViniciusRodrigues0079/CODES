class Conta:
    def __init__(self, titular, saldo, limite):
        self.__titular = titular
        self.__saldo = saldo
        self.__limite = limite

    def dpst (self):
        self.__saldo += float(input ("Digite a quantidade de dinheiro, em reais, que você deseja depositar: "))
    def sacar (self):
        saque = float(input ("Digite a quantidade de dinheiro, em reais, que você deseja sacar: "))
        if saque <= 99.99:
            print("Você não pode sacar um valor menor do que R$99,99, o valor mínimo a ser sacado é de R$100,00")
        else:
            if saque > self.__saldo:
                print ("O valor a ser sacado pe maior do que o saldo disponível, não é possível sacar.")
            else:
                self.__saldo -= saque
                print (f"Você sacou R${round(saque, 2)}")
    def get_saldo (self):
        return print (f"Seu saldo: R${round(self.__saldo, 2)}")
    def set_limite (self):
        nl = float(input("Digite o novo limite de crédito da conta corrente: "))
        if nl <= 0:
            print ("O limite de crédito não pode ser negativo.")
        else:
            self.__limite = nl
    def get_limite (self):
        return print (f"Seu limite de crédito: R${round(self.__limite, 2)}")
conta1 = Conta("Rogério", 7500.00, 5000.00)
conta1.get_saldo()
conta1.dpst()
conta1.get_saldo()
conta1.sacar()
conta1.get_saldo()
conta1.set_limite()
conta1.get_limite()