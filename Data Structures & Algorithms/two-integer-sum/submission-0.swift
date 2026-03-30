class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var sumDict = [Int: Int]()

        for i in 0..<nums.count {
            var val = nums[i]
            var diff = target - val

            if let value = sumDict[diff] {
                return [value, i]
            }
            sumDict[val] = i 
        }

        return []
    }
}
