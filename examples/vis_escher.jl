using VisJS
using LightGraphs

main(window) = begin
    push!(window.assets, ("VisJS", "vis-plot"))
    VisJS.drawGraph(WheelGraph(10))
end
