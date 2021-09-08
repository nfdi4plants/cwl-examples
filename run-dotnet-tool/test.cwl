#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: CommandLineTool
hints:
  DockerRequirement:
    dockerImageId: test
    dockerFile:
        $include: ./Dockerfile
requirements:
  - class: EnvVarRequirement
    envDef:
      - envName: DOTNET_NOLOGO
        envValue: "true"
baseCommand: [proteomiqon-peptidespectrummatching]
stdout: output.txt
inputs:
  firstArg:
    type: string
    inputBinding:
      position: 1
outputs:
  example_out:
    type: stdout