// arg: Name Units Place UpdateTime

start "Emulator: DHT-1" python emulator.py DHT-1 Celsius Room_1 7  
timeout 3 
start "Emulator: Gas-Sensor" python emulator.py Gas-Sensor kWh Home 13
timeout 3
start "Emulator: Infra-Red" python emulator.py Infra-Red Celsius air-1 5
timeout 3
start "Emulator: Alarm" python emulator.py Alarm Celsius freezer 6
timeout 3
start "Emulator: Humidity" python emulator.py Humidity Celsius boiler 8
timeout 3
start "Gas Detection System" python manager.py
timeout 10
start "System GUI" python gui.py