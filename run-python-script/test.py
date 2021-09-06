import argparse

print("I am a Python Script running in docker")

parser = argparse.ArgumentParser()

parser.add_argument('firstArg')
parser.add_argument('secondArg')

args = parser.parse_args()

print("you passed me some args:")

print(args)