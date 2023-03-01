let array1 = ["x", "y", "z"]
let array2 = ["a", "x", "c"]

let output1 = array1.filter({array2.contains($0)}) // returns "x"
print(output1)
    
let output2 = array1.filter({!array2.contains($0)}) // returns "y", "z"
print(output2)

let customObj1 = [["id": "123", "name": "abc"],
                  ["id": "234", "name": "pqr"]]
let customObj2 = [["id": "456", "name": "efg"],
                  ["id": "234", "name": "pqr"]]

let commonElement = customObj1.filter({customObj2.contains($0)})
print(commonElement)
