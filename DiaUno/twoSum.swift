class Solution {
  func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    let length = nums.count
    for i in 0 ..< length-1  {
        for j in i+1..<length {
            if nums[i] + nums[j]  == target {
                return([i, j])
            }
        }
    }
    return [0]
}

}
