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


// function visionValue(num) {
//   let str = num.toString();
//   let arr = str.split("");
//   let sum = 0;
//   for (let i = 0; i < arr.length; i++) {
//     sum += Number(arr[i]);
//   }
//   if (sum > 9) {
//     return visionValue(sum);
//   }
//   return sum;
// }
// console.log(visionValue(12345));
