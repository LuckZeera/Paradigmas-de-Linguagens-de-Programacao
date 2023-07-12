def main():
    l1 = Livro('PLP', 'Lucas de Castro', 2023, 183, 'Drama', 123412)
    l1.informacoes()
    l1.mostrar_ISBN()


class Livro:
    def __init__(self, nomeLivro, autor, anoPubli, nPags, genero, ISBN):
        self.nome = nomeLivro
        self.autor = autor
        self.anoPubli = anoPubli
        self.nPags = nPags
        self.genero = genero
        self.id = ISBN

    def informacoes(self):
        print(f'Título: {self.nome}')
        print(f'Autor: {self.autor}')
        print(f'Ano de publicação: {self.anoPubli}')
        print(f'Numero de paginas: {self.nPags}')
        print(f'Genero: {self.genero}')

    def mostrar_ISBN(self):
        print(
            f'International Standard Book Number/ Padrão Internacional de Numeração de Livro: {self.id}')


main()
