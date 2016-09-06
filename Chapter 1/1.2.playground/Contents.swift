//Check Permutation: Given two strings, write a method to decide if one is a permutation of the other.

func isPermutation(str: String, otherStr:String) -> Bool {
  let arrayStr = Array(str.characters)
  let arrayOtherStr = Array(otherStr.characters) 
  return arrayStr.sort() == arrayOtherStr.sort()
}

let result = isPermutation("abcd", otherStr: "dcba")
print("\(result) == true")

let result2 = isPermutation("abdc", otherStr: "dcba")
print("\(result2) == true")

let result3 = isPermutation("atdc", otherStr: "dcba")
print("\(result3) == false")