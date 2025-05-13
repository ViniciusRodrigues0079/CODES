class Produto:
    def __init__ (self, nome, preco, quantidade):
        self.__nome = nome
        self.__preco = preco
        self.quantidade = quantidade
    def get_nome (self):
        return print (self.__nome)
    def set_nome (self):
        self.__nome = input ("Digite o novo nome do produto: ")
    def get_preco (self):
        return print (round(self.__preco, 2))
    def set_preco (self):
        self.__preco = input ("Digite o novo preço do produto: ")
    def qtd (self):
        print (f"Quantidade: {self.quantidade}")
    def set_qtd (self):
        self.quantidade = input ("Digite a nova quantidade do produto: ")
arroz = Produto("Arroz", 6.99, 7)
arroz.get_nome()
arroz.get_preco()
arroz.qtd()