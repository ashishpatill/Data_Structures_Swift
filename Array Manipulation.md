#[HackerRank Challenge](https://www.hackerrank.com/challenges/crush/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen)

#Solution

To solve this problem, we need to find the maximum value in the array after performing all the operations.

We can start by creating an array of size `n` with all values set to 0. Then, for each operation, we can add the value `k` to the elements from index `a` to `b` inclusive.

At the end, we can simply return the maximum value in the array.

Here is the implementation in Swift:

	func arrayManipulation(n: Int, queries: [[Int]]) -> Int {
	    // Create an array of size n with all values set to 0
	    var arr = [Int](repeating: 0, count: n)
	
	    // Loop through the queries
	    for query in queries {
	        // Unpack the query
	        let a = query[0]
	        let b = query[1]
	        let k = query[2]
	
	        // Add the value k to the elements from index a to b inclusive
	        for i in a...b {
	            arr[i-1] += k
	        }
	    }
	
	    // Return the maximum value in the array
	    return arr.max()!
	}


Let's test the function with the example given in the prompt:

	let n = 5
	let queries = [[1, 2, 100], [2, 5, 100], [3, 4, 100]]
	print(arrayManipulation(n: n, queries: queries))


The output is `200`, which is the correct result.

We can improve the performance of the function by storing the starting and ending indices of each operation in two separate arrays. This way, we can simply loop through the arrays and add the values to the corresponding indices in the array.

Here is the optimized implementation:


	func arrayManipulation(n: Int, queries: [[Int]]) -> Int {
	    // Create arrays for storing the starting and ending indices of each operation
	    var starts = [Int](repeating: 0, count: n)
	    var ends = [Int](repeating: 0, count: n)
	
	    // Loop through the queries
	    for query in queries {
	        // Unpack the query
	        let a = query[0]
	        let b = query[1]
	        let k = query[2]
	
	        // Store the starting and ending indices of the operation
	        starts[a-1] += k
	        ends[b-1] += k
	    }
	
	    // Create an array of size n with all values set to 0
	    var arr = [Int](repeating: 0, count: n)
	
	    // Loop through the arrays and add the values to the corresponding indices in the array
	    var sum = 0
	    var max = 0
	    for i in 0..<n {
	        sum += starts[i]
	        arr[i] = sum
	        sum -= ends[i]
	        max = max > arr[i] ? max : arr[i]
	    }
	
	    // Return the maximum value in the array
	    return max
	}


Let's test the function again:

	let n = 5
	let queries = [[1, 2, 100], [2, 5, 100], [3, 4, 100]]
	print(arrayManipulation(n: n, queries: queries))
	

The output is still `200`

The function is correct and optimized.