//Is Unique: Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures.

func isUniqueWithoutDataStructure(str: String) -> Bool {
  let chars = Array(str.characters)
  var isUnique = true
  for char in chars {
    let numberChars = chars.filter({ $0 == char })
    if numberChars.count > 1 {
      isUnique = false
      break
    }
  }
  return isUnique
}

let result = isUniqueWithoutDataStructure("Hello")
print(String(result) + " == false")
let result2 = isUniqueWithoutDataStructure("playground")
print(String(result2) + " == true")
