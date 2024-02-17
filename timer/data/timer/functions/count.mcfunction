##
 # count.mcfunction
 # 
 #
 # Created by lontage
##

scoreboard players add Sekunden Timer 1
# Minuten
execute if score Sekunden Timer matches 60.. run scoreboard players add Minuten Timer 1
execute if score Sekunden Timer matches 60.. run scoreboard players set Sekunden Timer 0
# Stunden
execute if score Minuten Timer matches 60.. run scoreboard players add Stunden Timer 1
execute if score Minuten Timer matches 60.. run scoreboard players set Minuten Timer 0
# Tage
execute if score Stunden Timer matches 24.. run scoreboard players add Tage Timer 1
execute if score Stunden Timer matches 24.. run scoreboard players set Stunden Timer 0

# ..9: braucht ne null - 10.. braucht keine null
# 0 0 0
execute if score Stunden Timer matches ..9 if score Minuten Timer matches ..9 if score Sekunden Timer matches ..9 run title @a actionbar ["",{"score":{"name":"Tage","objective":"Timer"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"dark_gray"},{"text":"0","bold":true,"color":"gold"},{"score":{"name":"Stunden","objective":"Timer"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"dark_gray"},{"text":"0","bold":true,"color":"gold"},{"score":{"name":"Minuten","objective":"Timer"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"dark_gray"},{"text":"0","bold":true,"color":"gold"},{"score":{"name":"Sekunden","objective":"Timer"},"bold":true,"color":"gold"}]
# 0 0 /
execute if score Stunden Timer matches ..9 if score Minuten Timer matches ..9 if score Sekunden Timer matches 10.. run title @a actionbar ["",{"score":{"name":"Tage","objective":"Timer"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"dark_gray"},{"text":"0","bold":true,"color":"gold"},{"score":{"name":"Stunden","objective":"Timer"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"dark_gray"},{"text":"0","bold":true,"color":"gold"},{"score":{"name":"Minuten","objective":"Timer"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"dark_gray"},{"score":{"name":"Sekunden","objective":"Timer"},"bold":true,"color":"gold"}]
# 0 / 0
execute if score Stunden Timer matches ..9 if score Minuten Timer matches 10.. if score Sekunden Timer matches ..9 run title @a actionbar ["",{"score":{"name":"Tage","objective":"Timer"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"dark_gray"},{"text":"0","bold":true,"color":"gold"},{"score":{"name":"Stunden","objective":"Timer"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"dark_gray"},{"score":{"name":"Minuten","objective":"Timer"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"dark_gray"},{"text":"0","bold":true,"color":"gold"},{"score":{"name":"Sekunden","objective":"Timer"},"bold":true,"color":"gold"}]
# 0 / /
execute if score Stunden Timer matches ..9 if score Minuten Timer matches 10.. if score Sekunden Timer matches 10.. run title @a actionbar ["",{"score":{"name":"Tage","objective":"Timer"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"dark_gray"},{"text":"0","bold":true,"color":"gold"},{"score":{"name":"Stunden","objective":"Timer"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"dark_gray"},{"score":{"name":"Minuten","objective":"Timer"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"dark_gray"},{"score":{"name":"Sekunden","objective":"Timer"},"bold":true,"color":"gold"}]
# / 0 0
execute if score Stunden Timer matches 10.. if score Minuten Timer matches ..9 if score Sekunden Timer matches ..9 run title @a actionbar ["",{"score":{"name":"Tage","objective":"Timer"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"dark_gray"},{"score":{"name":"Stunden","objective":"Timer"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"dark_gray"},{"text":"0","bold":true,"color":"gold"},{"score":{"name":"Minuten","objective":"Timer"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"dark_gray"},{"text":"0","bold":true,"color":"gold"},{"score":{"name":"Sekunden","objective":"Timer"},"bold":true,"color":"gold"}]
# / 0 /
execute if score Stunden Timer matches 10.. if score Minuten Timer matches ..9 if score Sekunden Timer matches 10.. run title @a actionbar ["",{"score":{"name":"Tage","objective":"Timer"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"dark_gray"},{"score":{"name":"Stunden","objective":"Timer"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"dark_gray"},{"text":"0","bold":true,"color":"gold"},{"score":{"name":"Minuten","objective":"Timer"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"dark_gray"},{"score":{"name":"Sekunden","objective":"Timer"},"bold":true,"color":"gold"}]
# / / 0
execute if score Stunden Timer matches 10.. if score Minuten Timer matches 10.. if score Sekunden Timer matches ..9 run title @a actionbar ["",{"score":{"name":"Tage","objective":"Timer"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"dark_gray"},{"score":{"name":"Stunden","objective":"Timer"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"dark_gray"},{"score":{"name":"Minuten","objective":"Timer"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"dark_gray"},{"text":"0","bold":true,"color":"gold"},{"score":{"name":"Sekunden","objective":"Timer"},"bold":true,"color":"gold"}]
# / / /
execute if score Stunden Timer matches 10.. if score Minuten Timer matches 10.. if score Sekunden Timer matches 10.. run title @a actionbar ["",{"score":{"name":"Tage","objective":"Timer"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"dark_gray"},{"score":{"name":"Stunden","objective":"Timer"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"dark_gray"},{"score":{"name":"Minuten","objective":"Timer"},"bold":true,"color":"gold"},{"text":":","bold":true,"color":"dark_gray"},{"score":{"name":"Sekunden","objective":"Timer"},"bold":true,"color":"gold"}]

schedule function timer:count 1s