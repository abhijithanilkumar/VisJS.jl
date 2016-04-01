using Interact
using LightGraph
using VisJS

# Little slow to update!
@manipulate for i=1:100
    VisJS.drawGraph(WheelGraph(i))
end
