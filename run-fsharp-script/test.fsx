let args : string array = fsi.CommandLineArgs |> Array.tail
let first = args.[0]
let second = args.[1]

printfn $"firstArg: {first}"

printfn $"secondArg: {second}"

printfn "whaddup"