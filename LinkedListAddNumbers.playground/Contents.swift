import Foundation
public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { self.val = 0; self.next = nil; }
  public init(_ val: Int) { self.val = val; self.next = nil; }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var ans:ListNode?
    var carry = 0
    
    var l1 = l1
    var l2 = l2
    
    while (l1 != nil) || (l2 != nil),
          let val1 = l1?.val,
          let val2 = l2?.val {
        
        let sum = val1 + val2 + carry
        let res = ListNode(sum % 10)
        print("res: \(res.val)")
        
        if ans == nil {
            ans = res
        } else {
            ans?.next = res
            ans = ans?.next
        }
        
        if sum / 10 >= 1 {
            carry = sum / 10
        } else {
            carry = 0
        }
        
        l1 = l1 != nil ? l1!.next : nil
        l2 = l2 != nil ? l2!.next : nil
    }
    
    return ans
}

let l1 = ListNode(2, ListNode(4, ListNode(3)))
let l2 = ListNode(5, ListNode(6, ListNode(4)))


var ans = addTwoNumbers(l1, l2)
while ans != nil {
    print("ans: \(ans!.val)")
    ans = ans?.next
}
