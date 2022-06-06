from textgrid import TextGrid
import os

newDir = "sw_textgrids_da_new/"

files = os.listdir(newDir)
for file in files:
    temp = str(newDir + file)
    try:
        tg = TextGrid.fromFile(temp)
        tg.write(temp)
    except EOFError:
        print("EOFError in " + file)
    except AttributeError:
        print("AttributeError in " + file)