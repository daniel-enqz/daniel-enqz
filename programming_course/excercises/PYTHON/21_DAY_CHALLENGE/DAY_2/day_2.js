function deleteMiddleNode(head) {
  // Many linked list problems that modify the list
  // can be made simpler by temporarily inserting
  // an extra node as the head.
  let tempHead = new LLNode(Infinity, head);

  // This solution will use a slow/fast pattern. In this
  // case the fast will move twice as fast as the slow.
  let slow = tempHead;
  let fast = head?.next;

  while (fast) {
    // Slow moves ahead one.
    slow = slow.next;
    // Fast moves ahead two.
    fast = fast.next?.next;
  }

  // Now that fast has moved off the end (now is null)
  // slow is at the halfway point.

  // update the slow pointer's next to skip the node
  // after it.
  slow.next = slow.next ? slow.next.next : null;

  // Return the real head, not our temporary head.
  return tempHead.next;
}
// And now, I'll pass it over to Nic for Problem #2:

// Prompt
// Given a 2D rectangular matrix, return all of the values in a single, linear array in spiral order. Start at (0, 0) and first include everything in the first row. Then down the last column, back the last row (in reverse), and finally up the first column before turning right and continuing into the interior of the matrix.

// // For example:
//  1  2  3  4
//  5  6  7  8
//  9 10 11 12
//  13 14 15 16
// Returns:
// [1, 2, 3, 4, 8, 12, 16, 15, 14, 13, 9, 5, 6, 7, 11, 10]
// function spiralTraversal(matrix) {
//   /* your code here */
// }
