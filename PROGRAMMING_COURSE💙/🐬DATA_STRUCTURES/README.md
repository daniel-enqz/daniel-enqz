# 🐬 What are Data Strcutures?
>A way of analyzing our data in our application. CRUD principles will come into place.

### Directory
- [Arrays and Strings](https://github.com/daniel-enqz/daniel-enqz/blob/main/PROGRAMMING_COURSE💙/🐬DATA_STRUCTURES/README.md#arrays-and-strings)

# Arrays and Strings
![Screenshot 2023-08-22 at 19 37 57](https://github.com/daniel-enqz/daniel-enqz/assets/72522628/011ba3fd-ccbc-40e6-8850-43ccba3894a5)


### The magic of pointers in an Array

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

