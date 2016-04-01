using LightGraphs

function drawGraph(g)
  n = nv(g)
  e = edges(g)
  VisJSGraph(n,e)
end
