

using Colors
using LightGraphs
using VisJS

c = distinguishable_colors(10)
label = ["Node $i" for i in 1:10]
g = WheelGraph(10)
VisJS.drawGraph(g,label,c, label)
