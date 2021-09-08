#r "nuget: Plotly.NET, 2.0.0-preview.7"

open Plotly.NET

let args : string array = fsi.CommandLineArgs |> Array.tail
let first = args.[0]
let second = args.[1]

printfn $"i can use plotly: {Chart.Invisible() |> GenericChart.toChartHTML}"

printfn $"firstArg: {first}"

printfn $"secondArg: {second}"

printfn "whaddup"