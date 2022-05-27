import Foundation

class TrieNode<T:Hashable> {
    var value: T?
    var children: [T:TrieNode] = [:]
    weak var parentNode: TrieNode?
    
    init(value: T? = nil, parentNode: TrieNode? = nil) {
        self.value = value
        self.parentNode = parentNode
    }
}

class Trie {
    let root: TrieNode<Character>
    var endOfWord: Bool = false
    
    init() {
        root = TrieNode<Character>()
    }
    
    func insert(word: String) {
        guard word.count > 0 else { return }
        
        var currentNode = root
        
        for char in word.lowercased() {
            if let node = currentNode.children[char] {
                currentNode = node
            } else {
                let node = TrieNode.init(value: char, parentNode: currentNode)
                currentNode.children[char] = node
            }
        }
    }

}
