require 'pry'

class Tree
  def initialize(root = nil)
    @root = root
  end

  def get_element_by_id(id)
    nodes_to_visit = [@root]
    # binding.pry
    while nodes_to_visit.length > 0
      current_node = nodes_to_visit.shift
      return current_node if current_node[:id] == id

      nodes_to_visit += current_node[:children]
    end
  end
end

# Initialize an empty output array
# Initialize an array of nodes to visit and add the root node to it
# While there are nodes in the nodes to visit array
#   Remove the first node from the nodes to visit array
#   Add its value to the output array
#   Add its children (if any) to the end of the nodes to visit array
# Return the output array
def breadth_first_traversal(node)
  result = []
  nodes_to_visit = [node]
  # binding.pry
  while nodes_to_visit.length > 0
    node = nodes_to_visit.shift
    result.push(node[:value])
    nodes_to_visit += node[:children]
  end

  result
end
child_1 = {
  value: 2,
  children: []
}

child_2 = {
  value: 3,
  children: []
}

child_3 = {
  value: 4,
  children: []
}

root = {
  value: 1,
  children: [child_1, child_2, child_3]
}

answer = breadth_first_traversal(root)
puts "the answer is #{answer}"

# Initialize an empty output array
# Initialize an array of nodes to visit and add the root node to it
# While there are nodes in the array of nodes to visit
#   Remove the first node from the array of nodes to visit
#   Add its value to the output array
#   Add its children (if any) to the BEGINNING of the array of nodes to visit
# Return the output array

def depth_first_traversal(node)
  result = []
  nodes_to_visit = [node]

  while nodes_to_visit.length > 0
    node = nodes_to_visit.shift
    result.push(node[:value])
    nodes_to_visit = nodes[:children] + nodes_to_visit
  end
  result
end
