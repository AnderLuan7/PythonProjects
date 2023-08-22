# Calculadora de tinta

print('Seja Bem Vindo')

ren = int(input('Qual é o rendimento da lata:'))
lar = int(input('Qual é a largura da parede:'))
alt = int(input('Qual é a altura da parede:'))

def calculo_tinta():
    area = alt * lar
    total = area / ren
    print(f'Você precisará de {total} latas de tinta!')

calculo_tinta()


