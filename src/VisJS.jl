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

if Pkg.installed("Escher") != nothing
       include("escher_integration.jl")
end

end # module
