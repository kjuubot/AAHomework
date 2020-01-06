class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
        @val = val
        @neighbors = []
    end

    a = GraphNode.new('a')
    b = GraphNode.new('b')
    c = GraphNode.new('c')
    d = GraphNode.new('d')
    e = GraphNode.new('e')
    f = GraphNode.new('f')
    a.neighbors = [b, c, e]
    c.neighbors = [b, d]
    e.neighbors = [a]
    f.neighbors = [e]

    def bfs(node, graph, visited = Set.new())
        return nil if visited.include?(node.to_sym)

        queue = [node]

        while !queue.empty?
            cur_node = queue.shift
            visited.add(cur_node.to_sym)
            return cur_node if cur_node.val == target_value
            if !cur_node.neighbors.empty?
                queue += cur_node.neighbors
            end
        end
    end

end