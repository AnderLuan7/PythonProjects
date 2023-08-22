# Ponto do churrasco

print('Seja Bem Vindo')

ponto = int(input('Qual é a temperatura da carne:'))

if ponto < 48:
    print('Ainda não está pronto, favor aguardar!')
elif ponto in range(48,53):
    print('Selada')
elif ponto in range(54,59):
    print('Ao ponto para mal')
elif ponto in range(60,64):
    print('Ao ponto')
elif ponto in range(65,70):
    print('Ao ponto para bem')
elif ponto in range(71,90):
    print('Bem passada')
elif ponto >= 90:
    print('A carne queimou!')


