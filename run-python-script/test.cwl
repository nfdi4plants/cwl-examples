#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: CommandLineTool
hints:
  DockerRequirement:
    dockerPull: python:latest
baseCommand: python
stdout: output.txt
inputs:
  src:
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