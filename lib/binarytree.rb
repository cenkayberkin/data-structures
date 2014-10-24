class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @left = nil
    @right = nil
    @val = val
  end
  def self.inorder_traverse(root, result = "")
    if root == nil
      return ""
    end
    result += inorder_traverse(root.left, result) + " " + root.val + " " + inorder_traverse(root.right,result)
  end

  def self.postorder_traverse(root, result = [])
    if root == nil
      return []
    end

    postorder_traverse(root.left, result)
    postorder_traverse(root.right,result)
    result.push(root.val)
    result
  end

  def self.preorder_traverse(root,result = [])
    if root == nil
      return []
    end
    result.push(root.val)
    preorder_traverse(root.left, result)
    preorder_traverse(root.right,result)
    result
  end
end






