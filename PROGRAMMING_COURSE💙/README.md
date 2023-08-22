# Introduction to big O 🥇
---
## Other resources:
- **[Guide in writing clean code](https://github.com/daniel-enqz/daniel-enqz/tree/main/PROGRAMMING_COURSE💙/👍CLEAN_CODE)** <br>
- **[Data Structures](https://github.com/daniel-enqz/daniel-enqz/tree/main/PROGRAMMING_COURSE💙/DATA_STRUCTURESS)** <br>
- **[Object Oriented Design (OOP)](https://github.com/daniel-enqz/daniel-enqz/tree/main/PROGRAMMING_COURSE💙/🎉%20OBJECT%20ORIENTED%20DESIGN)**
---

## Measuring Time Complexity:
### Basic Rules
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

1. O(1): Constant time complexity. It doesnt change with the size of the input
2. O(log n): Logarithmic time complexity; grows logarithmically as the input size grows.
> A logarithm is the inverse operation to exponents.<br>
> In many cases, especially in computer science, this factor is 2
- O(logn) means that somewhere in your algorithm, the input is being reduced by a constant factor (not linear like `n - i`) at every step.
- In other words, after k steps, the input size is reduced to `n/2^k`
- After the first step, we only consider n / 2 elements. After the second step, we only consider n / 4 elements, and so on. <br>

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
# Time complexity is always O(n) as we will do on operation n times.
# But it will be slower as the operation inside is bigger, still this is always 500,000, meaning is fixed.
# The cost is bigger, but the algorithm ends up doing the operation n times, always.

def only_one_cool_operation(arr):
  for number in arr:
    for i in range(0..500000)
      print(number)

# n will be 5
arr = [8, 4, 5, 1. 2]
only_one_cool_operation(arr)
```

4. O(n log n): Linearithmic time complexity; grows more than linear but less than quadratic.
> A common time complexity is O(n⋅logn), which is reasonably fast for most problems and also the time complexity of efficient sorting algorithms.
- Its like combing process of O(n) and O(logn).
- Usually algorithms like Merge Sort that process an entire output in linear time O(n) but A logarithmic process O(logn) that's performed within each iteration of the linear process.

5. O(n^2): Quadratic time complexity; grows quadratically with the input size.

```python
def quadratic_example(arr):
  for i in arr:
    for j in arr:
      print(i, j)
```

```python
# This algorithm does have two nested loops, but the inner loop does not always iterate n times 
# The inner loop will do less iterations as i increases. e.g. (When i = 2, inner loop runs n - 2 times.)

def print_sums(arr):
    for i in range(len(arr)):
        for j in range(i, len(arr)):
            print(arr[i] + arr[j])
```

> The Big O notation abstracts away the exact constant factors and lower-order terms, focusing on the most significant terms that define how the function grows. 

This is a great illustration of how the specific details of a loop can affect the actual running time, even though the Big O notation might be the same. It's these nuances that can make algorithm analysis both challenging and interesting!

6. O(2^n): Exponential time complexity; grows exponentially with the input size.
- Means that the number of operations doubles with each additional element in the input.
- If you have 1 element, you might perform 2 operations. If you have 2 elements, you might perform 4 operations. If you have 3 elements, you might perform 8
- Memorization, recurssion, dynamic programming helps reducing the exponetial growth of operations
