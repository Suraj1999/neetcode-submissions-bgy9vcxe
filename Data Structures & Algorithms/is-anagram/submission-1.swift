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
        if charCount.keys.contains(ch) {
            if charCount[ch] == 1 {
                charCount.removeValue(forKey: ch)
            } else {
                charCount[ch, default: 0] -= 1
            }
        }
       }

       return charCount.isEmpty
    }
}
