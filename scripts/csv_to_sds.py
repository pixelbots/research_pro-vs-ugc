import sys

file_to_process = sys.argv[-1]

# define the file we are processing
f = open(file_to_process,"r")

sds = ""
last_time = ""

# loop through the lines
for line_string in f:

  # convert line_string to a list
  line = line_string.split(",")

  line[3] = line[3][:-1]
  last_time = line[3][:-1] + "9"

  code = line[1] + "+" + line[2] + "," + line[3] + " "
  sds += code
    
# add slash to end SDS session

sds = sds + "," + last_time + " /"

# print the string to stdout so we can pipe

print sds

f.close()



