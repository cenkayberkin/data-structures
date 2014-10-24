require 'minitest/spec'
require 'minitest/autorun'

require 'binarytree'

describe TreeNode, 'Testing treenode results ' do
  it 'tree node testing preorder traversal' do
    tim = TreeNode.new("Tim")
    jony = TreeNode.new("Jony")
    phil = TreeNode.new("Phil")
    don = TreeNode.new("Don")
    katie = TreeNode.new("Katie")
    craig = TreeNode.new("Craig")
    eddie = TreeNode.new("Eddie")
    peter = TreeNode.new("Peter")
    andrea = TreeNode.new("Andrea")

    tim.left = jony
    tim.right = phil
    jony.left = don
    jony.right = katie
    katie.left = peter
    katie.right = andrea
    phil.left = craig
    phil.right = eddie

    assert ["Tim", "Jony", "Don", "Katie", "Peter", "Andrea", "Phil", "Craig", "Eddie"] == TreeNode.preorder_traverse(tim)
  end

  it 'tree node testing postorder traversal' do
    tim = TreeNode.new("Tim")
    jony = TreeNode.new("Jony")
    phil = TreeNode.new("Phil")
    don = TreeNode.new("Don")
    katie = TreeNode.new("Katie")
    craig = TreeNode.new("Craig")
    eddie = TreeNode.new("Eddie")
    peter = TreeNode.new("Peter")
    andrea = TreeNode.new("Andrea")

    tim.left = jony
    tim.right = phil
    jony.left = don
    jony.right = katie
    katie.left = peter
    katie.right = andrea
    phil.left = craig
    phil.right = eddie

    assert ["Don", "Peter", "Andrea", "Katie", "Jony", "Craig", "Eddie", "Phil", "Tim"] == TreeNode.postorder_traverse(tim)
  end
end
