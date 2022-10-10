class Solution {
  List<int> twoSum(List<int> nums, int target) {
    final map = <int, int>{};

    for (int x = 0; x <= nums.length - 1; x++) {
      int remains = target - nums[x];
      if (map.containsKey(remains)) {
        return [x, map[remains]!];
      }
      map[nums[x]] = x;
    }

    return [];
  }
}
