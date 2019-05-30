--From learnyouahaskell.com
--5/29/2019

doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
then x
else x*2

--Putting 2 lists together
--using the ++ concatenation operator
list1 = [1,2,3,4]
list2 = [5,6,7,8]
list3 = list1 ++ list2

--Strings are also lists
hello = "Hello"
world = "world"
helloWorld = hello ++ " " ++ world

--use of the cons operator
--This adds the thing to the left of the operator to the beginning of the list
aSmallCat = 'A':" Small Cat"
list4 = 5:[1,2,3,4,5]

-- the !! operator can get an element out of a list
list4num1 = list4 !! 0

--you can compare lists with <, >, <=, >=, ==
boollist1list2 = list1 == list2

-- head function returns the first element in a list
list1Head = head list1

-- tail takes a list and returns it's tail
list1Tail = tail list1

-- last returns the last element in the list
list1last = last list1

-- init returns every element of the list except it's last
list1init = init list1

-- length returns the length of a list
list1Len = length list1

-- null returns a boolean based on if the list is empty or not
list1Null = null list1

-- reverse returns a reverse of a list
reverseHelloWorld = reverse "Hello World"

-- take requires a number n and a list, it then returns the first n elements of the list 
take3List1 = take 3 list1

-- drop requires a number n and a list, it then drops the first n elements of the list
drop3List1 = drop 3 list1

-- maximum returns the biggest element
list2Max = maximum list2

-- minimum returns the smallest element
list2Min = minimum list2

-- sum takes a list of numbers and returns the sum of the list
sumList2 = sum list2

-- product takes a list of numbers and returns the sum of the list
productList2 = product list2

-- elem takes a thing and a list of things, and returns boolean value of if the thing is in the list
elemList1 = elem 3 list1

-- can make a list from some early point to a later point
-- letters 'A' 'Z' produces list inclusive of A to Z
-- numbers 0 100 produces a list inclusive of 0 to 100
makeList x y = [x..y]


--makes a reverse list for numbers IE 100 to 1
makeReverseList x y = [x, x - 1 .. y]

