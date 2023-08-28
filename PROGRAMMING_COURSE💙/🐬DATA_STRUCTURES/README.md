# 🐬 What are Data Strcutures?
>A way of analyzing our data in our application. CRUD principles will come into place.

### Directory
- [Arrays and Strings](https://github.com/daniel-enqz/daniel-enqz/blob/main/PROGRAMMING_COURSE💙/🐬DATA_STRUCTURES/README.md#arrays-and-strings)
    - [The magic of pointers in an Array](https://github.com/daniel-enqz/daniel-enqz/blob/main/PROGRAMMING_COURSE💙/🐬DATA_STRUCTURES/README.md#The-magic-of-pointers-in-an-Array)
    - [Slinding Window](https://github.com/daniel-enqz/daniel-enqz/blob/main/PROGRAMMING_COURSE💙/🐬DATA_STRUCTURES/README.md#Sliding-window)

# Arrays and Strings
![Screenshot 2023-08-22 at 19 37 57](https://github.com/daniel-enqz/daniel-enqz/assets/72522628/011ba3fd-ccbc-40e6-8850-43ccba3894a5)

### The magic of pointers in an Array
> Two pointers just refers to using two integer variables to move along some iterables. There are even problems that make use of "three pointers".

In the next Palindrome example, if we move each pointer (2) one index in each iteration, the cost of the inner operation will be always constant O(1), meaning that as there's only one iteration happening. We always end up having a time complexity of O(n).
Also we are always having O(1) space complexity as we are not creating new varaibles relative to the input size.

```python
def check_if_palindrome(s):
    left = 0
    right = len(s) - 1

    while left < right:
        if s[left] != s[right]:
            return False
        left += 1
        right -= 1
    
    return True
```

### An intresting Time Complexity Analysis

This is an example of how we are moving two pointers over two different array, we start by moving both pointers at the same time in the first while loop, the cost of this is always O(1), becasue we are always moving at least one pointer forward.
At the end we need to ensure that both pointer are at the last index, so we do extra pointer adjustements in only one of the two arrays.
The complexity is always O(n + m), `because we are always processing each element of each array only once`


```python
function fn(arr1, arr2):
    i = j = 0
    while i < arr1.length AND j < arr2.length:
        Do some logic here depending on the problem
        Do some more logic here to decide on one of the following:
            1. i++
            2. j++
            3. Both i++ and j++

    // Step 4: make sure both iterables are exhausted
    // Note that only one of these loops would run
    while i < arr1.length:
        Do some logic here depending on the problem
        i++

    while j < arr2.length:
        Do some logic here depending on the problem
        j++
```

### Sliding window
