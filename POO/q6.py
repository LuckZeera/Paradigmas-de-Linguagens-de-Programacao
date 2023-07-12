class Obra_de_arte():
    def definir_autor(self):  # método abstrato
        pass


class Livro(Obra_de_arte):
    def __init__(self, nomeLivro, autor, anoPubli, nPags, genero, ISBN):
        self.nome = nomeLivro
        self.autor = autor
        self.anoPubli = anoPubli
        self.nPags = nPags
        self.genero = genero
        self.ISBN = ISBN

    def definir_autor(self):
        return self.autor

    def informacoes(self):
        print(f'Título: {self.nome}')
        print(f'Autor: {self.autor}')
        print(f'Ano de publicação: {self.anoPubli}')
        print(f'Numero de paginas: {self.nPags}')
        print(f'Genero: {self.genero}')

    def mostrar_ISBN(self):
        print(f'ISBN: {self.ISBN}')


livro = Livro("Dom Casmurro", "Machado de Assis", 1899,
              256, "Romance", "978-85-273-0077-8")

autor = livro.definir_autor()
print(autor)  # Machado de Assis

livro.informacoes()
# Título: Dom Casmurro
# Autor: Machado de Assis
# Ano de publicação: 1899
# Numero de paginas: 256
# Genero: Romance

livro.mostrar_ISBN()
# ISBN: 978-85-273-0077-8
