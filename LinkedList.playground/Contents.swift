import Foundation

class Node<T> {
    var value:T
    var next: Node<T>?

    init(_ value: T, next: Node<T>? = nil) {
        self.value = value
        self.next = next
    }
}

extension Node: CustomStringConvertible {
    public var description: String {
        guard let next = next else { return "\(value)" }
        
        return "\(value) -> \(String(describing: next)) "
    }
}

class LinkedList<T> {
    public var head:Node<T>?
    
    init(head: Node<T>) {
        self.head = head
    }
    
    func append(node: Node<T>) {
        // check if head is nil
        guard let head = head else {
            head = node
            return
        }
        
        // traverse linked list till last node
        var current = head
        while let next = current.next {
            current = next
        }
        
        // Add given node at last
        current.next = node
    }
    
    func prepend(node: Node<T>) {
        // check if head is nil
        let next = head?.next
        head = Node(node.value, next: head)
        
//        if let next = next {
//            print(next.value)
//            append(node: next)
//        }
    }
    
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        guard let head = head else {
            return "Empty list"
        }
        
        return String(describing: head)
    }
}

let list = LinkedList.init(head: Node(5))
list.append(node: Node(10))
print(list)
list.append(node: Node(12))
print(list)
list.prepend(node: Node(2))
print(list)
