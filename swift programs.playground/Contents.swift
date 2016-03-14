
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

/*--------------------------- point --------------------------*/



import Foundation

struct Point {
    
    var x:Double
    
    var y:Double
    
    
    mutating func moveBy(pointB:Point) {
        
        self.x = pointB.x
        self.y = pointB.y
    }
    
    func distanceTo(pointB:Point)->Double {
        
        
        
        
        return sqrt(pow((pointA.x - pointB.x),2) + pow((pointA.y-pointB.y),2))
        
    }
}

var pointA=Point(x: 1.0, y: 2.0)

var pointB=Point(x: 3.5, y: 4.5)


pointA.distanceTo(pointB)

pointA.moveBy(pointB)

var pointC=Point(x: 4.2, y: 5.3)

pointA.distanceTo(pointC)


/*------------------Rational numbers--------------------------*/

struct Rational {
    
    var numinator:Int=0
    var denominator:Int=0
    
    init(numinator:Int, denominator:Int) {
        
        let div = gcd(numinator, denominator)
        
        self.numinator = numinator / div
        
        self.denominator = denominator / div
    }
    
    func add(r2: Rational)->Rational {
        
        return Rational(numinator: (r1.numinator * r2.denominator + r1.denominator * r2.numinator), denominator:(r1.denominator * r2.denominator ) )
    }
    
    func sub(r2: Rational)->Rational {
        
        return Rational(numinator: (r1.numinator * r2.denominator - r1.denominator * r2.numinator), denominator:(r1.denominator * r2.denominator ) )
    }
    
    func mul(r2: Rational)->Rational {
        
        return Rational(numinator: (r1.numinator  * r2.numinator), denominator:(r1.denominator * r2.denominator ) )
    }
    
    func div(r2: Rational)->Rational {
        
        return Rational(numinator: (r1.numinator * r2.denominator ), denominator:(r1.denominator * r2.numinator ) )
    }
    
    
    
}

var r1 = Rational(numinator: 1, denominator: 2)
var r2 = Rational(numinator: 3, denominator: 4)

print(r1.add(r2))
print(r1.sub(r2))
print(r1.mul(r2))
print(r1.div(r2))





/*-------------------------- linkedlist---------------*/

class Node {
    
    var item:Int?
    
    var next:Node?
    
}

class myList {
    
    var top:Node = Node()
    
    
    func isEmpty()->Bool {
        
        return  top.item  == nil
        
    }
    
    func addItem(value:Int){
        
        
        if isEmpty() {
            
            top.item = value
            
        }
        else {
            
            var last = self.top
            
            while last.next != nil {
                
                last = last.next!
                
            }
            
            let new = Node()
            
            new.item = value
            last.next = new
            
        }
        
    }
    
    func remove(){
        
        top = top.next!
        
    }
    
    func  getCount()->Int {
        
        var temp = top
        var count = 0
        
        repeat {
            count++
            temp = temp.next!
            
        }
            while temp.item != nil && temp.next != nil
        count++
        
        return count
    }
    
    
    func display() {
        
        
        var temp = self.top
        
        repeat {
            print(temp.item!)
            temp = temp.next!
        }
            while temp.next != nil
        print(temp.item!)
    }
}

var list = myList()
list.isEmpty()
assert(list.isEmpty()==true)

list.addItem(22)
list.addItem(25)
list.addItem(30)
list.addItem(35)
list.addItem(45)
list.addItem(50)

assert(list.isEmpty()==false)

list.getCount()
list.remove()
list.remove()
list.display()


