cwlVersion: v1.2
class: CommandLineTool
hints:
    DockerRequirement:
        dockerPull: nextflow/nextflow:latest
baseCommand: [nextflow, run]
stdout: output.txt
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
        type: stdout
