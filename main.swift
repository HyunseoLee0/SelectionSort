var words = [String]()
let newWords: [String]

func swap(strings:inout [String],firstIndex:Int,secondIndex:Int)
{
    strings.swapAt(firstIndex,secondIndex)
}
func sort(unsortedStrings:[String]) -> [String]
{
    var tempCount = 0
    var totalCount = 0
    var unsortedArray = unsortedStrings
    tempCount += 1
    for i in 0 ..< unsortedArray.count
    {
        var min = i
        var j = i + 1
        while j < unsortedArray.count
        {
            if unsortedArray[min].count > unsortedArray[j].count
            {
                min = j
            }
            else
            {
                j += 1
            }
        }
        swap(strings:&unsortedArray,firstIndex:min,secondIndex:i)
        totalCount += 1
    }
    return unsortedArray
}
while let word = readLine()
{
    if word == ""
    {
        break
    }
    else
    {
        words.append(word)
    }
}
newWords = sort(unsortedStrings:words)
print("========== The Result ==========")
for word in newWords
{
    print(word)
}
