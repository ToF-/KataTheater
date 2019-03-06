module Theater
where
import Data.Set as S

type Seat = (Char,Int)
data Theater = Theater (Char,Char) (Int,Int) (Set Seat) 

range (min,max) = [min..max]

theater :: (Char,Char) -> (Int,Int) -> Theater
theater rows cols = Theater rows cols 
    (S.fromList [(row,col)| row <- range rows, col <- range cols])

offer :: Theater -> Int -> [Seat]
offer (Theater (min,max) _ _) _ = [(seat,1)]
    where r = range (min,max)
          seat = r!!middle
          middle = length r `div` 2
