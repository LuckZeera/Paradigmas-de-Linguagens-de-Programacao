class Jogo_da_velha:
    def __init__(self):
        self.grade = [[' ' for _ in range(3)] for _ in range(3)]
        self.jogador_atual = 'X'

    def exibir_grade(self):
        for linha in self.grade:
            print('|', end=' ')
            for celula in linha:
                print(celula, end=' | ')
            print("\n")

    def jogar(self):
        self.exibir_grade()

        while True:
            linha, coluna = self.obter_jogada()

            if self.grade[linha][coluna] != ' ':
                print("Casa ocupada. Tente novamente.")
                continue

            self.grade[linha][coluna] = self.jogador_atual
            self.exibir_grade()

            if self.verificar_vitoria():
                print(f"Jogador {self.jogador_atual} venceu!")
                break

            if self.verificar_empate():
                print("O jogo empatou!")
                break

            self.jogador_atual = 'O' if self.jogador_atual == 'X' else 'X'

    def obter_jogada(self):
        while True:
            try:
                linha = int(input("Informe a linha (1 a 3): "))
                coluna = int(input("Informe a coluna (1 a 3): "))
                if linha < 1 or linha > 3 or coluna < 1 or coluna > 3:
                    raise ValueError()
                return linha-1, coluna-1
            except ValueError:
                print("Jogada inválida. Tente novamente.")

    def verificar_vitoria(self):
        # Verificar linhas
        for linha in self.grade:
            if linha[0] == linha[1] == linha[2] != ' ':
                return True

        # Verificar colunas
        for coluna in range(3):
            if self.grade[0][coluna] == self.grade[1][coluna] == self.grade[2][coluna] != ' ':
                return True

        # Verificar diagonais
        if self.grade[0][0] == self.grade[1][1] == self.grade[2][2] != ' ':
            return True
        if self.grade[0][2] == self.grade[1][1] == self.grade[2][0] != ' ':
            return True

        return False

    def verificar_empate(self):
        for linha in self.grade:
            if ' ' in linha:
                return False
        return True


jogo = Jogo_da_velha()
jogo.jogar()


class Jogo_da_velha:
    def __init__(self):
        self.grade = [[' ' for _ in range(3)] for _ in range(3)]
        self.jogador_atual = 'X'

    def exibir_grade(self):
        for linha in self.grade:
            print('|', end=' ')
            for celula in linha:
                print(celula, end=' | ')
            print("\n")

    def jogar(self):
        self.exibir_grade()
        while True:
            linha, coluna = self.obter_jogada()
            if self.grade[linha][coluna] != ' ':
                print("Casa ocupada. Tente novamente.")
                continue
            self.grade[linha][coluna] = self.jogador_atual
            self.exibir_grade()
            if self.verificar_vitoria():
                print(f"Jogador {self.jogador_atual} venceu!")
                break
            if self.verificar_empate():
                print("O jogo empatou!")
                break
            self.jogador_atual = 'O' if self.jogador_atual == 'X' else 'X'

    def obter_jogada(self):
        while True:
            try:
                linha = int(input("Informe a linha (1 a 3): "))
                coluna = int(input("Informe a coluna (1 a 3): "))
                if linha < 1 or linha > 3 or coluna < 1 or coluna > 3:
                    raise ValueError()
                return linha-1, coluna-1
            except ValueError:
                print("Jogada inválida. Tente novamente.")
