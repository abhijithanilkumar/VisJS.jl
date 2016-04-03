import Base:writemime

function html_body(p::VisJSGraph)
    """
    <body>
    <div id="$(p.divid)"></div>
    <style type="text/css">
        #$(p.divid) {
            width: 600px;
            height: 400px;
            border: 1px solid lightgray;
        }
    </style>
    </body>
    <script type="text/javascript">
    $(generate_plot(p))
    </script>
    """
end

function get_color(c)
  if c != ""
    return ",color: \'$c\'"
  else
    return ""
  end
end

function generate_plot(p::VisJSGraph)
    nodes = ["{id:$(p.n[i].id),
               label: '$(p.n[i].label)',
               group: '$(p.n[i].group)'
               $(get_color(p.n[i].color))
              }" for i in 1:size(p.n,1)]
    edges = ""
    for item in p.e
      edges *= "{from:$(item[1]),to:$(item[2])},"
    end
    """require.config({
          paths: {
            vis: ["https://cdnjs.cloudflare.com/ajax/libs/vis/4.15.1/vis.min"],
          }
        });
    require(["vis"], function(vis){
    console.log(vis);
    // create an array with nodes
    var nodes = new vis.DataSet([
    $(join(nodes,","))
    ]);

    // create an array with edges
    var edges = new vis.DataSet([
    $(edges)
    ]);

    // create a network
    var container = document.getElementById('$(p.divid)');

    // provide the data in the vis format
    var data = {
        nodes: nodes,
        edges: edges
    };
    var options = {
      nodes: {
          shape: 'dot',
        },
    };

    // initialize your network!
    var network = new vis.Network(container, data, options);
});
    """
end

function Base.writemime(io::IO, ::MIME"text/html", p::VisJSGraph)
    print(io, html_body(p))
end
