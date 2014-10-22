#Hash table implementation.
- It is fixed size hashtable. 
- It handles hash collisions by using chaining linkedlist method to contain any values that share a hash
- It accepts only strings as keys.  If a non-string is provided, the 'set' method raises an appropriate exception.
- It has following methods:
    - get(key) - returns the value stored with the given key
    - set(key, val) - stores the given val using the given key
    - hash(key) - hashes the key provided

##Hashtable test

- 235000 word added as key and reversed words added as values.
- Same words checked with their values.


#Quick sort implementation
>Quick sort is usually the fastest sorting algorithm, unless bad pivots are chosen.

#Merge sort implementation

>Merge sort is ideal if you want a stable sort algorithm, its worst case scenario and best case wont change, it O(NlgN)

#Insertion sort implementation

>Insertion is ideal for almost sorted arrays and situation when there is no extra space except sorting array.
>i have implemented common algorithm insertion sort, worst case scenario would be if the array is reveresed.

Time complexity is:
worst case: O(n^2)
best case: O(n) if it is sorted already.
