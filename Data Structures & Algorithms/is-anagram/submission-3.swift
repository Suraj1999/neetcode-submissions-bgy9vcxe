class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }

       var charCount = [Character: Int]()

       for ch in s {
         charCount[ch, default: 0] += 1
       }

       for ch in t {
    if let count = charCount[ch] {
        if count == 1 {
            charCount[ch] = nil
        } else {
            charCount[ch]! -= 1
        }
    } else {
        return false
    }
}

       return charCount.isEmpty
    }
}
