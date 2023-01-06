def start_clock():
    hours = 0
    minutes = 0
    seconds = 0

    while True:
        # Los segundos siempre se incrementan
        seconds += 1

        # Si los segundos llegan a 60, se incrementan los minutos, lo mismo pasa con las horas.
        # Ejemplo: (5 // 60 = 0) (60 // 60 = 1)
        minutes += seconds // 60
        hours += minutes // 60

        # Los segundos y minutos se resetean a 0 cuando llegan a 60, y las horas a llegan a 24.
        # Ejemplo: (5 % 60 = 5) (60 % 60 = 0)
        seconds %= 60
        minutes %= 60
        hours %= 24

        print(f"{hours:02d}:{minutes:02d}:{seconds:02d}")

start_clock()
