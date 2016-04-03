using LightGraphs

function drawGraph(g)
  n = [NodeType(i) for i in 1:nv(g)]
  e = edges(g)
  VisJSGraph(n,e)
end

function drawGraph(g,label,color)
  n = [NodeType(i,label[i],hex(color[i])) for i in 1:nv(g)]
  e = edges(g)
  VisJSGraph(n,e)
end
