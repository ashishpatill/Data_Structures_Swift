import Foundation

public class TreeNode {
   public var val: Int
   public var left: TreeNode?
   public var right: TreeNode?
   public init() { self.val = 0; self.left = nil; self.right = nil; }
   public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
   public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
       self.val = val
       self.left = left
       self.right = right
   }
}
 
class Solution {
    func isBalanced(_ root: TreeNode?) -> Bool {
        return height(root) != Int.min
    }
    
    func height(_ node: TreeNode?) -> Int {
        guard let node = node else { return -1 }
        
        let lh = height(node.left)
        if lh == Int.min { return Int.min }
        
        let rh = height(node.right)
        if rh == Int.min { return Int.min }
        
        let diff = abs(lh - rh)
        if diff > 1 {
            return Int.min
        } else {
            return max(height(node.left), height(node.right)) + 1
        }
    }
}

