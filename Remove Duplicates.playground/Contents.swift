import Foundation

class Stack {
    var storage: [Character] = []
    
    init() {
        storage = []
    }
    
    func isEmpty() -> Bool {
        return storage.count > 0
    }
    
    func pop() -> Character {
        return storage.remove(at:storage.count - 1)
    }
    
    func push(_ char: Character) {
        storage.append(char)
    }
    
    func peek() -> Character {
        return storage[storage.count - 1]
    }
}

func removeDuplicates(_ s: String) -> String {
        if s.count < 2 { return s }

        let stack = Stack()
        
        for char in s {
            print(char)
            if stack.isEmpty() {
                stack.push(char)
            } else if stack.peek() != char {
                stack.push(char)
            } else {
                stack.pop()
            }
        }
    
        var res = [Character]()
         
        while stack.isEmpty() == false {
            res.insert(stack.pop(), at:0)
        }
    
        return String(res)
}

print(removeDuplicates("abbaca"))

