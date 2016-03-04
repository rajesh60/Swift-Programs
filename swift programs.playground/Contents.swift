
/*--------------------------minMax---------------------------------------*/

func minMax(arr:[Int])->(maxx:Int,minn:Int)
{
    var min = arr[0],max = arr[0]
    
    for i in arr {
        
        if max < i {
            
            max = i
        }
        if min > i {
            
            min = i
        }
    }
    return (max,min)
}

var find = minMax([2,3,5,7,11])//11,2

assert(find.maxx == 11)
assert(find.minn == 2)

find = minMax([5,4,6,1,3,2])

assert(find.maxx == 6)
assert(find.minn == 1)




/*----------------------- isPrime ------------------------*/


func isPrime(n:Int)->Bool {
    
    if n < 2 {
        
        return false
    }
    
    
    for i in 2..<n {
        
        if n % i == 0 {
            
            return false
        }
    }
    return true
}

isPrime(5)

assert(isPrime(2))
assert(isPrime(11))
assert(isPrime(17))
assert(isPrime(4)==false)


/*-------------------- gcd ---------------------------*/

func gcd(x:Int,_ y:Int)->Int {
    
    
    var r = 0;
    
    for var i=1;i <= x || i <= y ; i++ {
        
        if x % i == 0 && y % i == 0 {
            
            r = i
        }
    }
    return r
}

let result = gcd(8,12)


assert(gcd(27, 9)==9)

assert(gcd(100, 0)==100)

assert(gcd(0, 1000)==1000)


/*----------------------IndexOf--------------------------*/

func indexOf(arr:[Int],n:Int)->Int? {
    
    
    for index in 0..<arr.count {
        
        if n == arr[index] {
            
            return index
        }
    }
    return nil
}
indexOf([1,2,3,4,5], n: 3)

assert(indexOf([2,3,5,7], n: 5)==2)

assert(indexOf([1,2,3], n: 4)==nil)

assert(indexOf([], n: 5) == nil)



/*---------------------- reverse -------------------------*/


func reverse(arr:[Int])->[Int] {
    
    if arr  == [] {
        return arr
    }
    var empty = [Int]()
    
    for var i = arr.count-1;i>=0;i-- {
        
        empty.append(arr[i])
    }
    
    return empty
}

reverse([1,2,3,4,5,6,7,8,9])



assert(reverse([1,2,3,4]) == [4,3,2,1])

assert(reverse([2,3,5,7,11]) == [11,7,5,3,2])

assert(reverse([])==[])


/*--------------------RemoveDuplicates from sorted array----------------------*/





func removeDuplicates(sortedArr:[Int])->[Int] {
    
    
    
    var newArr = [Int]()
    
    for var i=1;i<sortedArr.count;i++ {
        
        if sortedArr[i] != sortedArr[i-1] {
            
            newArr.append(sortedArr[i-1])
            
        }
        
    }
    newArr.append(sortedArr[sortedArr.count-1])
    
    return newArr
}
removeDuplicates([1,1,2,5,5,6,6,6,7,9])

assert(removeDuplicates([1,1,1,2,5,6]) == [1,2,5,6])

assert(removeDuplicates([2,5,6,6,7,8,9,9])==[2,5,6,7,8,9])
