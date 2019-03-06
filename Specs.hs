import Test.Hspec
import Theater

main = hspec $ do
    describe "theater" $ do
        describe "offer seats nearer the middle of a row" $ do
            describe "in an empty theater" $ do
                it "of size 5x3" $ do
                    let t = theater ('A','E') (1,3) 
                    offer t 1 `shouldBe` [('C',1)]
                it "of size 26x20" $ do
                    let t = theater ('A','Z') (1,20) 
                    offer t 1 `shouldBe` [('N',1)]

            describe "after booking of one seat" $ do
                it "in size 5x3" $ do
                    let t = theater ('A','E') (1,3)
                        o = offer t 1
                        t'= book t o
                    offer t' 1 `shouldBe` [('D',1)]

                    
            
                
                    
