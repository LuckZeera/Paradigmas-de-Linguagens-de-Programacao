import datetime


class Data:
    def __init__(self, dia=None, mes=None, ano=None):
        if dia is None or mes is None or ano is None:
            data_atual = datetime.date.today()
            self.dia = data_atual.day
            self.mes = data_atual.month
            self.ano = data_atual.year
        else:
            self.dia = dia
            self.mes = mes
            self.ano = ano

        if not self.validar_data():
            raise ValueError("Data inválida.")

    def validar_data(self):
        try:
            data = datetime.date(self.ano, self.mes, self.dia)
            return True
        except ValueError:
            return False

    def avancar_um_dia(self):
        data_atual = datetime.date(self.ano, self.mes, self.dia)
        nova_data = data_atual + datetime.timedelta(days=1)
        self.dia = nova_data.day
        self.mes = nova_data.month
        self.ano = nova_data.year
    # método especial em Python que retorna uma representação em formato de string do objeto

    def __str__(self):
        return f"{self.dia:02d}/{self.mes:02d}1/{self.ano:04d}"


# Criando uma instância da classe Data com valores específicos
data1 = Data(1, 1, 2022)
print(data1)  # 01/01/2022

# Criando uma instância da classe Data sem fornecer valores (data atual)
data2 = Data()
print(data2)  # data atual

# Avançando a data para o dia seguinte
data2.avancar_um_dia()
print(data2)  # data atual + 1 dia
