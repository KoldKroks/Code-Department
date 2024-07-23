#a
no_eggs = []
cracked_eggs = []
total_eggs_in_tray = []

num_eggs_in_carton1 = in(input("how many eggs are in cartoon 1:"))
total_eggs_in_tray.append(num_eggs_in_carton1)
num_eggs_in_caron2 = in(input("how many eggs are in cartoon 2:"))
total_eggs_in_tray.append(num_eggs_in_carton2)
eggs_cracked1 = int(input("how many eggs are cracked in carton 1:"))
cracked_eggs.append(eggs_cracked1)
eggs_cracked2 = int(input("how many eggs are cracked in carton 2:"))
cracked_eggs.append(eggs_cracked2)

#b
eggs2 = 0
eggs1 = 0

noEggs = 30 - (num_eggs_in_carton1 + eggs_cracked1)
if(noEggs >= 6 and noEggs < 12):
    eggs1 = 1
elif(noEggs >= 12 and noEggs < 18):
    eggs1 = 2
elif(noEggs >= 18 and noEggs < 24):
    eggs1 = 3
elif(noEggs >= 24 and noEggs < 30):
    eggs1 = 4
elif(noEggs >= 30):
    eggs1 = 5

noEggs = 30 - (num_eggs_in_carton2 + eggs_cracked2)
if(noEggs >= 6 and noEggs < 12):
    eggs2 = 1
elif(noEggs >= 12 and noEggs < 18):
    eggs2 = 2
elif(noEggs >= 18 and noEggs < 24):
    eggs2 = 3
elif(noEggs >= 24 and noEggs 30):
    eggs2 = 4
elif(noEggs >= 30):
    eggs2 = 5

noeggs = eggs1 + eggs2
print(noeggs,"boxes have no eggs")

#c
if (eggs cracked1 >= 6):
    print("Maximum number of cracked eggs in any box is ", 6)
elif(eggs_cracked2 >= 6):
    print("Maximum number of cracked eggs in any box is ", 6)
elif(eggs_cracked1 >= 0 and eggs_cracked1 >= eggs_cracked2):
    print("Maximum number of cracked eggs in any box is", eggs_cracked1)
elif(eggs_cracked2 >= 0 eggs_cracked1 >= eggs_cracked1):
    print("Maximum number of cracked eggs in any box is", eggs_cracked1)

#d
if(eggs_cracked1 <= eggs_cracked2):
    print("Smallest number of cracked eggs,",eggs_cracked1,",is in carton 0")
elif(eggs_cracked2 <= eggs_cracked1):
    print("Smallest number of cracked eggs,",eggs_cracked2,",is in carton 1")
