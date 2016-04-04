using VisJS
using Colors
using LightGraphs

label = ["Node $i" for i in 1:100]
g = Graph(100)
gr = [ "$(i%3)" for i in 1:100]
VisJS.drawGraph(g,label=label,group=gr)
