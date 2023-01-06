
findMaxNumber = (array) => {
  max = 0
  for (let i = 0; i < array.length; i++) {
    const element = array[i];
    if (element > max) {
      max = element
    }
  }
  return max
}


function buildRandomArray() {
  // Build array with randmon numbers

  let array = []
  for (let i = 0; i < 10; i++) {
    array.push(Math.floor(Math.random() * 1000))
  }
  return array
}
array = buildRandomArray()
console.log(findMaxNumber(array));
console.log(array);
