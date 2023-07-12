class Piscina:
    def __init__(self, volume):
        self.volume = volume
# método especial para sobrecarregar o operador +

    def __add__(self, outra_piscina):
        novo_volume = self.volume + outra_piscina.volume
        return Piscina(novo_volume)

    def __str__(self):
        return f"Volume de {self.volume} metros cúbicos"


piscina1 = Piscina(100)
piscina2 = Piscina(50)
piscina_soma = piscina1 + piscina2

print(piscina_soma)
