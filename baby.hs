--From learnyouahaskell.com
--5/29/2019

{- first functions -}
doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
then x
else x*2

{- intro to lists -}
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

{- ranges -}

-- can make a list from some early point to a later point
-- letters 'A' 'Z' produces list inclusive of A to Z
-- numbers 0 100 produces a list inclusive of 0 to 100
makeList x y = [x..y]


--makes a reverse list for numbers IE 100 to 1
makeReverseList x y = [x, x - 1 .. y]

--cycle takes a list and cycles it into an infinite list. Since it will try to display in infinity, you
--have to take a slice of it
cycleDemo = take 10 (cycle[1,2,3])
cycleDemo2 = take 12 (cycle "LOL ")

--repeat makes an infinite list of a sincle element
repeatDemo = take 12 (repeat 10)

--similar to repeat, replicate makes a finite list using replicate "num of times" "thing to replicate"
replicateDemo = replicate 10 20

{-list comprehension-}

--we can use a set notation
set1 = [2*x | x <- [1..10]]

--adding a predicate to the prior
set2 = [2*x | x <- [1..10], 2*x >= 12]

--using predicates in this way is also called "filtering"
set3 = [x | x <- [50..100], mod x 7 == 3]

boomBangs xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

set4 = [x | x <- [10..20], x /= 13, x /=15, x /= 19]

set5 = [ x*y | x <- [2,5,10], y <-[8,10,11]]

set6 = [ x*y | x <- [2,5,10], y <-[8,10,11] , x*y > 50]

nouns = ["hobo","frog","pope"]
adjectives = ["lazy","grouchy","scheming"]
combos = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]

--our own version of length
{-
_ means that we don't care what we'll draw from the list anyway so instead of writing a variable name
we'll never use, we just write _. This function replaces every element of a list with 1 and then sums
that up
-}
length' xs = sum[1 | _ <- xs]

removeNonUppercase st = [c | c <- st, elem c ['A'..'Z']]

{- TUPLES -}

tup = (8,11)
tup2 = ("Wow", False)

--fst returns the first component of a tuple
tupFst = fst tup
tup2Fst = fst tup2

--snd returns the second compononet of a tuple
tupSnd = snd tup
tup2Snd = snd tup2

{- the above fst and snd functions only work on pairs "tuples of 2" -}

{- zip takes 2 lists, and creates tuples based on element numbers of the lists -}
zipRNounsAdj = zip nouns adjectives

triangles = [(a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10]]

rightTriangles = [(a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]

rightTriangles' = [(a,b,c) | c <- [1..100], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c >= 24]



