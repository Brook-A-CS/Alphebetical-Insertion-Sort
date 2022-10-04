var arrayOfWords = [String]()

func read(_ array: inout [String]) {    
    var line : String?
    
    repeat {
        line = readLine()
        if line != nil {
            array.append(line!)
//            print(line!)
        }
    } while line != nil
}

func printArray(array: [String]) {
    for element in array {
        print(element)
    }
}

func insertionSorter(_ unsorted: inout [String]) {
    
    for index in 0 ..< unsorted.count {
        var tempIndex = index
        while tempIndex > 0 {
            if unsorted[tempIndex].lowercased() < unsorted[tempIndex - 1].lowercased() {
                let temp = unsorted[tempIndex - 1]
                unsorted[tempIndex-1] = unsorted[tempIndex]
                unsorted[tempIndex] = temp
            }
//            print(unsorted)
            tempIndex -= 1
        }
    }
}

read(&arrayOfWords)
insertionSorter(&arrayOfWords)
printArray(array: arrayOfWords)
