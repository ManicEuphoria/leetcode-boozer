# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
  l, r, res = 0, nums.length - 1, []
  while l <= r
    if nums[l] ** 2 > nums[r] ** 2
      res << nums[l] ** 2
      l += 1
    else
      res << nums[r] ** 2
      r -= 1
    end
  end
  res.reverse
end
