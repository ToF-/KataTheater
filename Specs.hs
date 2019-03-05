import Test.Hspec

main = hspec $ do
    describe "seat offer" $ do
        describe "do not offer any seat that is already booked by another customer" $ do
            let t = theater ('A','G') (1,10) 
                b = foldr book t (tail [(row,col) | row <- ['A'..'G'], col <- [1,10]])
        
            
                
