-- najprostsza funkcja jednoargumentowa
f :: Double -> Double
f x = x ^ 2

-- zadanie: zdefiniuj g x = x ^ 3

-- wartość bezwzgledna
modul :: Double -> Double
modul x
  | x >= 0 = x
  | otherwise = -x 

-- zadanie: zdefiniuj sig(x)
-- funkcja znak -- użycie warunków (guardów)
znak :: Int -> Int
znak x 
  | x == 0 = 0
  | x < 0 = -1
  | otherwise = 1

-- zadanie: zdefiniować moduł z x
-- modul x
--   | x >= 0 = x
--   | otherwise = - x

-- funkcja silnia -- funkcja rekurencyjna
silnia :: Int -> Int
silnia 0 = 1
silnia x = x * silnia(x-1)

-- silnia1 0 = (0,1)
-- silnia1 x = (x, silnia(x))
--
-- map silnia1 [1..20]


fib 0 = 0
fib 1 = 1
fib x = fib(x-1) + fib(x-2)

-- funkcja dwuargumentowa
pole_trojkata :: Double -> Double -> Double
pole_trojkata a h = a * h / 2

-- równanie kwadratowe -- pokazać częściową aplikację argumentów
rownanie_kwadratowe :: Double -> Double -> Double -> Double -> Double
rownanie_kwadratowe a b c x = a * x ^ 2 + b * x + c

-- pierwiastki równania kwadratowego
pierwiastki :: Double -> Double -> Double -> [Double]
pierwiastki a b c
  | delta < 0 = []
  | delta == 0 = [- b / (2 * a)]
  | delta > 0 = [(- b - sqrt(delta)) / (2 * a), (- b + sqrt(delta)) / (2 * a)]
  where
    delta = b ^ 2 - 4 * a * c

jakas_funkcja_kwadratowa :: Double -> Double
jakas_funkcja_kwadratowa x = rownanie_kwadratowe 1 (-1) 5 x
-- jakas_funkcja_kwadratowa 10 -- > 95.0

razy_dwa x = x * 2

-- map razy_dwa [1..10]
-- map razy_dwa [1..]
-- map rownanie (pierwiastki argumenty_rownania)

