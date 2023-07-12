class Netflix:
    usuarios_online = 0

    def __init__(self, user, filme):
        self.user = user
        self.filme = filme
        Netflix.usuarios_online += 1

    def nOnline(self):
        return Netflix.usuarios_online

    def nomeFilme(self):
        return self.filme


sessao1 = Netflix("usuario1", "Filme A")
sessao2 = Netflix("usuario2", "Filme B")
sessao3 = Netflix("usuario3", "Filme C")

print(sessao1.nOnline())
print(sessao1.nomeFilme())
