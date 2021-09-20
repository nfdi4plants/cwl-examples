#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: CommandLineTool
hints:
  DockerRequirement:
    # dockerImageId: r-script-runner
    # dockerFile: 
    #     $include: ./Dockerfile
    dockerPull: rocker/tidyverse:4.1
requirements:
  - class: NetworkAccess
    networkAccess: true  
  - class: InlineJavascriptRequirement
  - class: InitialWorkDirRequirement
    listing:
      - entry: "$({class: 'Directory', listing: []})"
        entryname: "./lib"
        writable: true
baseCommand: Rscript
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