import Data.List.Split

main = do putStrLn "<records>"
          interact $ unlines . (map toElem) . lines
          putStrLn "</records>"

toElem l = "  <record>\n" ++ (unlines $ toFields l) ++ "  </record>"
toFields s = map toField $ splitOn "," s
toField v = "   <field>" ++ v ++ "</field>"
