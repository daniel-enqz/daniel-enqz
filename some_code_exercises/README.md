# Algorithms and Data Structures 🥇

## Basic Rules
✅ **"When writing algorithms, time complexity and memory (space) are in balance"** <br>
✅ **"We use asymptotic notation to exclude less important cases, and ust focuses on running time"**

<p align="center">
  <img src="assets/complexity.png" />
</p>

## Running Time Rules (fastest(1) to slower(6)) (VARIES DEPENDING ON THE INPUT) ⏩
1. O(1)
   - When you find in first itaration
   
3. Logarithmic functions `log n`
   - When an algorithm decreases the magnitude of its input size each time.
   - Time increases lineary, while input(n) exponentially. (10 = 1s) (100 - 2s) (10000 - 4s)
   - At each iteration array is halved

4. Linear functions `37n`
   - When the leght of the input increases linearly with the size of the input

6. Linearithmic functions `n log n`
   - Divide and put back together

7. Polynomial functions `n^2`
   - Used in nested loops (When an iteration over array is done x times, in this case 2)

9. Exponential functions `2^n` (AVOID USING THIS ONE)
   - Doubles the magnitude with each increment in the data set. ( n = 3 // 8 operations, n = 10 // 1024 operations 😥)

<p align="center">
  <img src="assets/graph.jpeg" />
</p>

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
>   - (edit here)

> **Merge Sort:**
> - **_Complexity:_**
>   - (edit here)
> - **_Space Complexty:_**
>   - (edit here)
> - **_Explanation:_**
>   - `Partions array into halves and merges two halves in linear time.`
