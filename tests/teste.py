import pyautogui

# Obtendo as coordenadas atuais do mouse
x, y = pyautogui.position()
print(f'Coordenadas do mouse: ({x}, {y})')


# import pyautogui

# # Obtendo as coordenadas de um ponto específico
# x = 1000
# y = 1000

# # Capturando a tela a partir das coordenadas específicas
# screenshot = pyautogui.screenshot(region=(x, y, 100, 100))  # Captura uma região de 100x100 pixels a partir do ponto (x, y)

# # Salvando a captura de tela em um arquivo
# screenshot.save('screenshot.png')