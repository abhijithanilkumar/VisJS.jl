module VisJS

# package code goes here
export VisJSGraph

type VisJSGraph
    n
    e
    divid
end

VisJSGraph(p,e) = VisJSGraph(p, e, Base.Random.uuid4())

include("display.jl")
include("utils.jl")

end # module
