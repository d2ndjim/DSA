let arr1 = [18, 22, 33, 4, 5, 6];
let arr2 = [5, 4, 22, 1, 88, 9];

const newArray = arr1.filter((num) => arr2.includes(num));
// console.log(newArray);

//QUESTION 1
function moveZeroes(nums) {
  const zeroes = nums.filter((n) => n === 0);
  nums = nums.filter((n) => n !== 0);
  for (let i = 0; i < zeroes.length; i++) {
    nums.push(0);
  }
  return nums;
}
let nums = [0, 1, 0, 3, 12];
// console.log(moveZeroes(nums));

// QUESTION 2
function interSection(nums1, nums2) {
  const present = [];
  for (let i = 0; i < nums1.length; i++) {
    if (nums2.includes(nums1[i])) {
      present.push(nums1[i]);
    }
  }
  return [...new Set(present)];
}
// console.log(interSection([1, 2, 2, 1], [2, 2]));

// QUESTION 3
function groupAnagrams(strs) {
  const output = [];
  // define map
  const map = {};
  // loop through strs
  for (let i = 0; i < strs.length; i++) {
    // sort current str
    const strSorted = strs[i].split("").sort().join("");
    // if sorted string is present in map
    if (map[strSorted] !== undefined) {
      // get index of output array to push current str
      output[map[strSorted]].push(strs[i]);
    } else {
      // push current str into output array
      output.push([strs[i]]);
      // add sorted str to map
      // set map[sorted str] = output array length - 1
      map[strSorted] = output.length - 1;
    }
  }

  // return output array
  return output;
}
// console.log(groupAnagrams(["eat", "tea", "tan", "ate", "nat", "bat"]));

//QUESTION 4
function canJump(nums) {
  let max = 0;
  for (let i = 0; i < nums.length; i++) {
    // The only time that max < i is when we are at 0 and we cannot move forward
    if (i > max) return false;
    // Move the max pointer the maximum
    max = Math.max(nums[i] + i, max);
  }
  // If we did not get stuck at a 0 then return true
  return true;
}

// console.log(canJump([0, 3, 1, 1, 4]));


//QUESTION 5
function twoSum(nums, target) {
  let map = {};
  for (let i = 0; i < nums.length; i++) {
    let complement = target - nums[i];
    if (map[complement] !== undefined) {
      return [map[complement], i];
    }
    map[nums[i]] = i;
  }

  // Alternative solution
  for (let i = 0; i < nums.length; i++) {
    for (let j = i + 1; j < nums.length; j++) {
      if (nums[i] + nums[j] === target) {
        return [i, j];
      }
    }
  } 
}

// console.log(twoSum([2, 7, 11, 15], 9));

function longestCommonPrefix(strs) {
  if (strs.length === 0) return "";
  let prefix = strs[0];
  for (let i = 1; i < strs.length; i++) {
    while (strs[i].indexOf(prefix) !== 0) {
      prefix = prefix.substring(0, prefix.length - 1);
      if (prefix === "") return "";
    }
  } 
  return prefix;

}

console.log(longestCommonPrefix(["flower", "flow", "flight"]));