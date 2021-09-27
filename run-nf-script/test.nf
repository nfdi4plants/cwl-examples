#!/usr/bin/env nextflow

params.firstArg = "first"
params.secondArg = "second"
//in_ch = Channel.fromPath(params.firstArg)

process foo{
    input:
        val x from params.firstArg
    output:
        file 'output.txt' into bar_ch
    script:
    """
    echo 'The first argument is: $x' > output.txt
    """
}

process bar{
    input:
        file y from bar_ch
        val z from params.secondArg

    publishDir "$PWD/", mode: 'copy'
    output:
        file 'output.txt'
    script:
    """
    echo "\n The second argument is: $z" >> $y
    """
}