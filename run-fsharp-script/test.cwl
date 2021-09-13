#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: CommandLineTool
hints:
  DockerRequirement:
    dockerPull: mcr.microsoft.com/dotnet/sdk:5.0
requirements:
  EnvVarRequirement:
    envDef:
      - envName: DOTNET_NOLOGO
        envValue: "true"
  NetworkAccess:
    networkAccess: true  
baseCommand: [dotnet, fsi]
stdout: output.txt
inputs:
  scriptFile:
    type: File
    inputBinding:
      position: 1
  firstArg:
    type: string
    inputBinding:
      position: 2
  secondArg:
    type: string
    inputBinding:
      position: 3
outputs:
  example_out:
    type: stdout