import Data.List.Split

main = do putStrLn "<records>"
          interact $ unlines . (map toRecord) . lines
          putStrLn "</records>"

toRecord l = "  <record>\n" ++ (unlines $ toFields l) ++ "  </record>"
toFields s = map toField $ splitOn "," s
toField v = "   <field>" ++ v ++ "</field>"
