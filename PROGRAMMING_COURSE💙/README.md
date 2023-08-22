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

1. O(1): Constant time complexity. It doesnt change with the size of the input
2. O(log n): Logarithmic time complexity; grows logarithmically as the input size grows.
> A logarithm is the inverse operation to exponents.<br>
> O(logn) means that somewhere in your algorithm, the input is being reduced by a percentage at every step.<br>
> This means that if your input is size n, then the algorithm will perform x operations, where `2^x = n`<br>
> After the first step, we only consider n / 2 elements. After the second step, we only consider n / 4 elements, and so on. <br>

4. O(n): Linear time complexity; grows linearly with the input size. Meaning you will do ceartain stuff, n times. n always being fixed by the length of the input.

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

5. O(n log n): Linearithmic time complexity; grows more than linear but less than quadratic.
> A common time complexity is O(n⋅logn), which is reasonably fast for most problems and also the time complexity of efficient sorting algorithms.

7. O(n^2): Quadratic time complexity; grows quadratically with the input size.

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

7. O(2^n): Exponential time complexity; grows exponentially with the input size.

