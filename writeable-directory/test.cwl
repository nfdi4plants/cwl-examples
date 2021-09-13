#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: CommandLineTool
baseCommand: echo
requirements:
    ShellCommandRequirement: {}
    InitialWorkDirRequirement:
        listing:
            - class: Directory
              basename: out
              listing: []
arguments:
    - valueFrom: '>'
      shellQuote: false
      position: 2
    - valueFrom: $(runtime.outdir)/out/output.txt
      position: 3
inputs:
    text:
        type: string
        inputBinding:
            position: 1
outputs:
    out_file:
        type: File
        outputBinding:
            glob: $(runtime.outdir)/out/output.txt 