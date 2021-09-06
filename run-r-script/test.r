print("I am a R Script tunning in docker")

options <- commandArgs(trailingOnly = TRUE)

print("you passed some cli args to me:")
print(options)