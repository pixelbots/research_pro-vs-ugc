import sys

file_to_process = sys.argv[-1]

# define the file we are processing
f = open(file_to_process,"r")

# initial photo number counter for this file
word = 0

# dictionary of numbers and word equivalent
numbersAsWords = {1: 'one', 2: 'two', 3: 'three', 4: 'four', 5: 'five', \
             6: 'six', 7: 'seven', 8: 'eight', 9: 'nine', 10: 'ten', \
            11: 'eleven', 12: 'twelve', 13: 'thirteen', 14: 'fourteen', \
            15: 'fifteen', 16: 'sixteen', 17: 'xeventeen', 18: 'eighteen', \
            19: 'nineteen', 20: 'twenty', 21: 'twentyone', 22: 'twentytwo', \
            23: 'twentythree', 24: 'twentyfour', 25: 'twentyfive', 26: 'twentysix', \
            27: 'twentyseven', 28: 'twentyeight', 29: 'twentynine', 30: 'thirty', \
            31: 'thirty', 32: 'thirtytwo', 33: 'thirtythree', 34: 'thirtyfour', 35: 'thirtyfive', \
            36: 'thirtysix', 37: 'thirtyseven', 38: 'thirtyeight', 39: 'thirtynine', \
            40: 'forty', 41: 'fortyone', 42: 'fortytwo', 43: 'fortythree', 44: 'fortyfour', \
            45: 'fortyfive', 46: 'fortysix', 47: 'fortyseven', 48: 'fortyeight', 49: 'fortynine', \
            50: 'fifty', 51: 'fiftyone', 52: 'fiftytwo', 53: 'fiftythree', 54: 'fiftyfour', \
            55: 'fiftyfive', 56: 'fiftysix', 57: 'fiftyseven', 58: 'fiftyeight', 59: 'fiftynine', \
            60: 'sixty', 61: 'sixtyone', 62: 'sixtytwo', 63: 'sixtythree', 64: 'sixtyfour', \
            65: 'sixtyfive', 66: 'sixtysix', 67: 'sixtyseven', 68: 'sixtyeight', 69: 'sixtynine', \
            70: 'seventy', 71: 'seventyone', 72: 'seventytwo', 73: 'seventythree', 74: 'seventyfour', \
            75: 'seventyfive', 76: 'seventysix', 77: 'seventyseven', 78: 'seventyeight', 79: 'seventynine', \
            0: 'Zero'}

# loop through the lines
for line_string in f:

  # convert line_string to a list
  line = line_string.split(",")

  # add 3 indeces from beginning of list
  line.insert(0,"")
  line.insert(0,"")
  line.insert(0,"")

  # checking for header row and skipping
  if line[4] == "description":
    continue

  old = line[4]

  # 1st column indicates which photo
  if old.startswith('next'):
    word += 1
    continue
  line[0] = numbersAsWords[word]

  # 2nd column shows pro or ugc
  if old.startswith('p'):
    line[1] = "pro"
  elif old.startswith('u'):
    line[1] = "ugc"
  else:
    continue

  # 3rd column is the gaze code
  if 'face' in old:
    line[2] = 'face'
  elif 'detail' in old and 'person' in old:
    line[2] = 'body'
  elif 'detail' in old:
    line[2] = 'detail'
  elif 'interace' in old:
    line[2] = 'ui'
  elif 'words' in old:
    line[2] = 'words'
  elif 'click' in old:
    line[2] = 'action'
  elif 'caption' in old:
    line[2] = 'caption'
  else:
    line[2] = 'unknown'

  # 4th column convert event times to 1:00.0 format
  time = line[3]

  # trying to figure out how to replace a charcter that is a color with a period instead.
  if len(time) > 5 and time[-6] == ":":
    tenth = time[-2]
    time = time[:-3]
    time = time + "." + tenth
  else:
    time = time + ".0"
  line[3] = time

  # get rid of original description
  line.pop(4)

  # convert list back to csv string
  line_csv = ",".join(line)
  
  # print the string to stdout so we can pipe
  print line_csv

f.close()



