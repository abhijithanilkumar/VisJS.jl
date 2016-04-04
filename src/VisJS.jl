module VisJS

# package code goes here
export VisJSGraph, NodeType

type NodeType
  id::Int64
  label::ASCIIString
  color::ASCIIString
  group::ASCIIString
end

type VisJSGraph
    n::Array{NodeType,1}
    e
    divid
end

VisJSGraph(n,e) = VisJSGraph(n, e, randstring())

include("display.jl")
include("utils.jl")

if Pkg.installed("Escher") != nothing
       include("escher_integration.jl")
end

end # module
