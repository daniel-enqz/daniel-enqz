# Algorithms and Data Structures 🥇
---
## Must watch resources:
- **[Guide in writing clean code](https://github.com/daniel-enqz/daniel-enqz/tree/main/PROGRAMMING_COURSE💙/👍CLEAN_CODE)** <br>
- **[Data Structures](https://github.com/daniel-enqz/daniel-enqz/tree/main/PROGRAMMING_COURSE💙/DATA_STRUCTURESS)** <br>
- **[Object Oriented Design (OOP)](https://github.com/daniel-enqz/daniel-enqz/tree/main/PROGRAMMING_COURSE💙/🎉%20OBJECT%20ORIENTED%20DESIGN)**
---

## Basic Rules
✅ **"When writing algorithms, we need a tool that helps us see how they will perform as the problem size increases"** <br>
✅ **"We use asymptotic notation to see the relationship between the input size (n) and the number of operations,"** <br>
✅ **"Remember 'n' is the length of the input. "** <br>

```python
arr = [8, 4, 5, 1. 2]
# n will be 5
```

## Running Time Rules (fastest(1) to slower(6)) (VARIES DEPENDING ON THE INPUT) ⏩
<p align="center">
  <img src="assets/graph.jpeg" />
</p>

1. O(1): Constant time complexity. It doesnt change with the size of the input.
2. O(log n):
3. O(n): Linear time complexity; grows linearly with the input size. Meaning you will do ceartain stuff, n times. n always being fixed by the length of the input.

```python
# Time complexity is always O(n) as we will do on operation n times.

def only_one_cool_operation(arr):
  for number in arr:
    print(number)

# n will be 5
arr = [8, 4, 5, 1. 2]
only_one_cool_operation(arr)
```
```python
# Time complexity is always O(n) as we will do on operation n times. But it will be slower as the operation inside is bigger, still this is always 500,000, meaning is fixed. The cost is bigger, bit the algorith ends upd doing the operation n times, always

def only_one_cool_operation(arr):
  for number in arr:
    for i in range(0..500000)
      print(number)

# n will be 5
arr = [8, 4, 5, 1. 2]
only_one_cool_operation(arr)
```

## Searching 🔎
> **Binary Search:**
> - **_Complexity: (Running Time/Asymptotic Notation)_**
>   - O(log n)
>   - Ω(1)
> - **_Space Complexty:_**
>   - O(1)
> - **_Explanation:_**
>   - `Partions array into halves each iteration`
> - **_Example:_**

```javascript
// BINARY SEARCH EXAMPLE:
let array = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,,16,17]
let targetValue = 15
let min;
let max;

for ( let i = o; i < array.length, i++) {
  guess = Math.floor((min + max) / 2)
  if (array[guess] === targetValue) {
    return guess;
  } else if (array[guess] > targetValue) {
    max = guess - 1;
  } else {
    min = guess +  1;
  }
  return -1;
}
```

## Sorting 🔀 [ Θ(nlogn) is probably the best time we can achieve]
<p align="center">
  <img src="assets/sorting_table.jpeg" />
</p>

> **Binary Sort:**
> - **_Complexity:_**
>   - Θ(nlogn)
>   - O(nlogn)
>   - Ω(n)
> - **_Space Complexty:_**
>   - O(n) No other varieble than themporary is required

> **Selection Sort:**
> - **_Complexity:_**
>   - Θ(n^2) All cases regardless of the input (Nested Loops)
> - **_Space Complexty:_**
>   - O(1)
> - **_Explanation:_**
>   - `This algorithm is called selection sort because it repeatedly selects the next-smallest element and swaps it into place.`

> **Insertion Sort:**
> - **_Complexity:_**
>   - Θ(n^2)
>   - O(n^2)
>   - Ω(n) (array may be sorted)
> - **_Space Complexty:_**
>   - (edit here)
> - **_Explanation:_**
>   - `Having a key and compare it with i'ts left element, if element > than key, slide element to right, insert key when element < key `

> **Quicksort:**
> - **_Complexity:_**
>   - Θ(nlogn)
>   - O(nlogn)
>   - Ω(n)
> - **_Space Complexty:_**
>   - O(logn) (average case)
>   - O(n) (worst case)
> - **_Explanation:_**
>   - `Quicksort is a divide-and-conquer algorithm that selects a 'pivot' element from the array and partitions the other elements into two groups - those less than the pivot and those greater than the pivot. It then recursively sorts the sub-arrays.`

> **Merge Sort:**

> - **_Complexity:_**
>   - Θ(nlogn)
>   - O(nlogn)
>   - Ω(nlogn)
> - **_Space Complexty:_**
>   - O(n)
> - **_Explanation:_**
>   - `Merge Sort is a divide-and-conquer algorithm that repeatedly splits the array into halves until each sub-array contains only one element. It then merges the sub-arrays in linear time, combining them into a single, sorted array.`
