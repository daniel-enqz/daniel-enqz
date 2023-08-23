# 🐬 What are Data Strcutures?
>A way of analyzing our data in our application. CRUD principles will come into place.

### Directory
- [Arrays and Strings](https://github.com/daniel-enqz/daniel-enqz/blob/main/PROGRAMMING_COURSE💙/🐬DATA_STRUCTURES/README.md#arrays-and-strings)

# Arrays and Strings
![Screenshot 2023-08-22 at 19 37 57](https://github.com/daniel-enqz/daniel-enqz/assets/72522628/011ba3fd-ccbc-40e6-8850-43ccba3894a5)

### The magic of pointers in an Array
In the next example, if we move each pinter (2) one index in each iteration, the cost of the inner operation will be always constant O(1), meaning that as there's only one iteration happening. We always end up having a time complexity of O(n).


```python
function fn(arr):
    left = 0
    right = arr.length - 1

    while left < right:
        Do some logic here depending on the problem
        Do some more logic here to decide on one of the following:
            1. left++
            2. right--
            3. Both left++ and right--
```
