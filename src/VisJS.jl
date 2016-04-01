module VisJS

# package code goes here
export VisJSGraph

type VisJSGraph
    n
    e
    divid
end

VisJSGraph(p,e) = VisJSGraph(p, e, randstring())

include("display.jl")
include("utils.jl")

end # module
