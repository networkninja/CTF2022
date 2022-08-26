#!/usr/bin/python3

# Libs
import os, sys
from datetime import datetime

# Process command line arguments
n = len(sys.argv)

for arg in range(1, n):
    if str(sys.argv[arg]) == '-e':
        val = str(sys.argv[arg + 1])
        if '=' in val:
            name, value = val.split('=', 2)
            os.environ[name] = val

    if str(sys.argv[arg]) == '-d':
        include_date = True

    if str(sys.argv[arg]) == '-y':
        auto_yes = True

    if str(sys.argv[arg]) == '-h':
        print("Usage: motd.py -[dy]")
        print("\nUpdates /etc/motd file.")
        print("       -d\tOptionally include date.")
        print("       -y\tAnswer yes automatically.")
        print("       -h\tPrint help.")
        exit(1)

# Functions
def write_file():
    motd_file = open("/etc/motd", "a")

    try: 
        include_date
        motd_file.write("MOTD UPDATED: ", now)
    except NameError:
        pass

    motd_file.write(motd, "\n\n")
    motd_file.close()

# Get date
date = datetime.now()
now = date.strftime("%m/%d/%Y, %H:%M:%S")

# Get input from user.
motd = input("MOTD Text: ")
print("\n\nNew MOTD Text:\n\n")

try: 
    include_date
    print("MOTD UPDATED: ", now)
except NameError:
    pass

print(motd, "\n\n")

try: 
    auto_yes
    write_file()
except NameError:
    pass

write_to_file = input("Update MOTD?: ")
if 'y' in write_to_file:
    write_file()

