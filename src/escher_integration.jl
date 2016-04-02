import Escher: Elem, Tile, render
import Base: convert
import JSON: json

type VisPlot <: Tile
    nodes
    edges
end

nodes_json(v::VisJSGraph) = json([Dict(:id=>i, :label=>"Node $i") for i in 1:v.n])

function edges_json(v::VisJSGraph)
    edges = Vector{Dict}()
    for item in v.e
        push!(edges, Dict(:from=>item[1],:to=>item[2]))
    end
    json(edges)
end

convert(::Type{Tile}, v::VisJSGraph) = VisPlot(nodes_json(v), edges_json(v))

render(plot::VisPlot, state) =
    Elem(:"vis-plot", attributes = Dict(:nodes=>plot.nodes, :edges=>plot.edges))
