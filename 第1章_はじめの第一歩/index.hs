doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x =
  if x > 100
    then x
    else x * 2

-- use apostrophe as function name
doubleSmallNumber' x = doubleSmallNumber x + 1

-- NOTE: 「基本的で、明らかに正しい関数を組み合わせて、より大きな関数を組み立てる」

lostNumbers = [1, 3, 8, 16, 48, 99]

joined = [1, 2, 3, 4] ++ [5, 6, 7, 8]

helloWorld = "hello" ++ " " ++ "world"

aSmallCat = 'A' : " Small Cat"

between5 = 5 : [1, 2, 3, 4, 5]

-- [1] is the syntax sugar of 1:[]
-- ghci> 1:2:3:[] == [1,2,3]
-- True

text = "hello i am tatsukoizumi"

thirdLetter = text !! 3

listInList = [[1, 2, 3, 4], [5, 3, 3, 3], [1, 2, 3, 4], [1, 2, 3]]

oneToTwenty = [1 .. 20]

first24ofMultiple13 = take 24 [13, 26 ..]

-- リスト内包表記
twiceOneToTen = [x * 2 | x <- [1 .. 10]]

boomBangs xs = [if x < 10 then "BOOM" else "BANG" | x <- xs, odd x]

nouns = ["dog", "cat", "mouse", "tiger"]

adjectives = ["cool", "large", "くさい", "cute", "かわいい"]

funnyWords = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]

length' xs = sum [1 | _ <- xs]

removeOddFromListInList :: Integral a => [[a]] -> [[a]]
removeOddFromListInList xxs = [[x | x <- xs, even x] | xs <- xxs]

-- tuple
vector = [(1, 2), (1, 3)]

-- find right triangle
triples = [(a, b, c) | c <- [1 .. 10], b <- [1 .. 10], a <- [1 .. 10]]

rightTriangles = [(a, b, c) | c <- [1 .. 10], a <- [1 .. c], b <- [1 .. a], a ^ 2 + b ^ 2 == c ^ 2]

rightTriangles' = [(a, b, c) | c <- [1 .. 10], a <- [1 .. c], b <- [1 .. a], a ^ 2 + b ^ 2 == c ^ 2, a + b + c == 24]