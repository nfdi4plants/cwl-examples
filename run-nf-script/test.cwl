cwlVersion: v1.2
class: CommandLineTool
requirements:
  - class: DockerRequirement
    dockerPull: nextflow/nextflow:latest
  - class: InlineJavascriptRequirement
  - class: InitialWorkDirRequirement
    listing:
      - entry: "$({class: 'Directory', listing: []})"
        entryname: "/.nextflow/plugins"
        writable: true
baseCommand: [nextflow, run]
inputs:
  src:
    type: File
    inputBinding: {position: 1}
    default:
      class: File
      location: test.nf
  firstArg:
    type: string
    inputBinding: {prefix: --firstArg, position: 2}
  secondArg:
    type: string
    inputBinding: {prefix: --secondArg, position: 3}
outputs:
  example_out:
    type: File
    outputBinding:
      glob: $(runtime.outdir)/output.txt
