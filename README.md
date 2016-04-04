# VisJS

[![Build Status](https://travis-ci.org/abhijithanilkumar/VisJS.jl.svg?branch=master)](https://travis-ci.org/abhijithanilkumar/VisJS.jl)

## Install

In a Julia REPL, run:

```julia
Pkg.clone("https://github.com/abhijithanilkumar/VisJS.jl")
```

## Network Visualization

The `drawGraph` function can be used to visualize a graph that is a `LightGraphs` object. It visualizes the graph using vis.js.

Usage :

```julia
g = WheelGraph(100)
labels = ["Node $i" for i in 1:100]
groups = [ "$(i%3)" for i in 1:100]
colors = distinguishable_colors(100)
VisJS.drawGraph(g,label=labels,color=colros,group=groups)
```

`drawGraph` function accepts 3 optional keyword arguments:

* `label` - Array of labels for the nodes
* `color` - Array of colors for the nodes
* `group` - Array of groups to which the nodes belong

Note : Group properties are overridden by Node properties. That is, if `color` array is passed along with `group` array, groups passed will not be used. Nodes will be colored using the `color` array.

##Examples

```julia
using VisJS
using Colors
using LightGraphs

g = WheelGraph(100)
labels = ["Node $i" for i in 1:100]
groups = [ "$(i%3)" for i in 1:100]
VisJS.drawGraph(g,label=labels,group=groups)
```

The above piece of code produces the following output :

![alt tag](https://raw.githubusercontent.com/abhijithanilkumar/VisJS.jl/master/examples/group.png)

