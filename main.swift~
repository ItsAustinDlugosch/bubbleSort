var wordsList : [String] = []
while let input = readLine() {
    wordsList.append(input)
}

func swap(arr: inout [String], one: Int, two: Int) {
    let placeholder = arr[one]
    arr[one] = arr[two]
    arr[two] = placeholder
}

func bubbleSort(arr: inout[String]) -> [String] {
    var swaps = 0
    if arr.count == 1 {
        return arr
    }
    
    repeat {
        swaps = 0
        for i in 1 ..< arr.count {
            if arr[i - 1] > arr[i] {
                swap(arr: &arr, one: i - 1, two: i)
                swaps += 1
            }
        }
    }  while swaps != 0
    return arr
}
let sortedWords = bubbleSort(arr: &wordsList)
