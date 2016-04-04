using LightGraphs

function getcolor(color,i)
  if isempty(color)
    return ""
  else
    return "#$(hex(color[i]))"
  end
end

function getlabel(label,i)
  if isempty(label)
    return ""
  else
    return label[i]
  end
end

function getgroup(group,i)
  if isempty(group)
    return ""
  else
    return group[i]
  end
end

function drawGraph(g;label=[],color=[],group=[])
  n = [NodeType(i,"$(getlabel(label,i))","$(getcolor(color,i))","$(getgroup(group,i))") for i in 1:nv(g)]
  e = edges(g)
  VisJSGraph(n,e)
end
