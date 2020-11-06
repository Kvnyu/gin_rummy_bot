
-- | Calculates the deadwood of a group of melds
-- Examples:
-- >>>let a = [Card Spade Ace, Card Heart Ace, Card Club Ace, Card Diamond Ace,Card Club Two, Card Club Three, Card Diamond Four, Card Club Five, Card Club Six]
-- >>>let b = buildMelds a
-- >>>let c = buildTree b [] a
-- >>>let e = paths c
-- >>>let f = minMelds e a 15
-- >>>meldsDeadwood f a
-- 15
meldsDeadwood :: [[Card]] -> [Card] -> Int
meldsDeadwood melds hand = ( deadwoodCalculator hand ) - (foldl (\acc curr -> acc + deadwoodCalculator curr) 0 melds )


-- | Folds a finds all paths
-- Examples:
-- >>>let a = [Card Spade Ace, Card Heart Ace, Card Club Ace, Card Diamond Ace,Card Club Two, Card Club Three, Card Diamond Four, Card Club Five, Card Club Six]
-- >>>let b = buildMelds a
-- >>>let c = buildTree b [] a
-- >>>let e = paths c
-- >>>let f = minMelds e
-- >>>let h = findMinDeadwood c
-- >>>getMeld f a h

getMeld meldsl hand min = filter ((min ==).(flip meldsDeadwood hand)) meldsl
-- makeMelds
-- make really basic functions
-- memory is the one we have to parse
-- use read function parser is string into list of cards
-- Use show to turn data into strings
[
[[],[(SA),(S2),(S3)],[(S4),(S5),(S6)],[(S7),(S8),(S9)],[(S4),(S5),(S6)],[(S8),(S9),(S10)],[(S4),(S5),(S6)],[(S7),(S8),(S9),(S10)],[(SA),(S2),(S3)],[(S5),(S6),(S7)],[(S8),(S9),(S10)],[(SA),(S2),(S3)],[(S6),(S7),(S8)],[(SA),(S2),(S3)],[(S7),(S8),(S9)],[(S4),(S5),(S6)],[(SA),(S2),(S3)],[(S8),(S9),(S10)],[(S4),(S5),(S6)],[(S8),(S9),(S10)],[(S5),(S6),(S7)],[(S8),(S9),(S10)],[(S4),(S5),(S6),(S7)],[(SA),(S2),(S3)],[(S4),(S5),(S6),(S7)],[(S8),(S9),(S10)],[(SA),(S2),(S3)],[(S5),(S6),(S7),(S8)],[(SA),(S2),(S3)],[(S6),(S7),(S8),(S9)],[(SA),(S2),(S3)],[(S7),(S8),(S9),(S10)],[(S4),(S5),(S6)],[(SA),(S2),(S3)],[(S4),(S5),(S6),(S7),(S8)],[(SA),(S2),(S3)],[(S5),(S6),(S7),(S8),(S9)],[(SA),(S2),(S3)],[(S6),(S7),(S8),(S9),(S10)]],
[[],[(S2),(S3),(S4)],[(S5),(S6),(S7)],[(S8),(S9),(S10)],[(S2),(S3),(S4)],[(S6),(S7),(S8)],[(S2),(S3),(S4)],[(S7),(S8),(S9)],[(S2),(S3),(S4)],[(S8),(S9),(S10)],[(S5),(S6),(S7)],[(S2),(S3),(S4)],[(S5),(S6),(S7),(S8)],[(S2),(S3),(S4)],[(S6),(S7),(S8),(S9)],[(S2),(S3),(S4)],[(S7),(S8),(S9),(S10)],[(S2),(S3),(S4)],[(S5),(S6),(S7),(S8),(S9)],[(S2),(S3),(S4)],[(S6),(S7),(S8),(S9),(S10)]],[[],[(S3),(S4),(S5)],[(S6),(S7),(S8)],[(S3),(S4),(S5)],[(S7),(S8),(S9)],[(S3),(S4),(S5)],[(S8),(S9),(S10)],[(S3),(S4),(S5)],[(S6),(S7),(S8),(S9)],[(S3),(S4),(S5)],[(S7),(S8),(S9),(S10)],[(S3),(S4),(S5)],[(S6),(S7),(S8),(S9),(S10)]]
,[[],[(S4),(S5),(S6)],[(SA),(S2),(S3)],[(S7),(S8),(S9)],[(SA),(S2),(S3)],[(S8),(S9),(S10)],[(SA),(S2),(S3)],[(S7),(S8),(S9),(S10)],[(S4),(S5),(S6)],[(S7),(S8),(S9)],[(SA),(S2),(S3)],[(S4),(S5),(S6)],[(S8),(S9),(S10)],[(SA),(S2),(S3)],[(S4),(S5),(S6)],[(S7),(S8),(S9),(S10)],[(SA),(S2),(S3)]],
[[],[(S5),(S6),(S7)],[(SA),(S2),(S3)],[(S8),(S9),(S10)],[(S5),(S6),(S7)],[(S2),(S3),(S4)],[(S8),(S9),(S10)],[(S5),(S6),(S7)],[(S8),(S9),(S10)],[(SA),(S2),(S3)],[(S8),(S9),(S10)],[(S2),(S3),(S4)],[(S8),(S9),(S10)],[(SA),(S2),(S3),(S4)],[(S5),(S6),(S7)],[(SA),(S2),(S3),(S4)],[(S8),(S9),(S10)]]
,[[],[(S6),(S7),(S8)],[(SA),(S2),(S3)],[(S6),(S7),(S8)],[(S2),(S3),(S4)],[(S6),(S7),(S8)],[(S3),(S4),(S5)],[(S6),(S7),(S8)],[(SA),(S2),(S3),(S4)],[(S6),(S7),(S8)],[(S2),(S3),(S4),(S5)],[(S6),(S7),(S8)],[(SA),(S2),(S3),(S4),(S5)]],
[[],[(S7),(S8),(S9)],[(SA),(S2),(S3)],[(S4),(S5),(S6)],[(S7),(S8),(S9)],[(S2),(S3),(S4)],[(S7),(S8),(S9)],[(S3),(S4),(S5)],[(S7),(S8),(S9)],[(S4),(S5),(S6)],[(SA),(S2),(S3)],[(S7),(S8),(S9)],[(SA),(S2),(S3),(S4)],[(S7),(S8),(S9)],[(S2),(S3),(S4),(S5)],[(S7),(S8),(S9)],[(S3),(S4),(S5),(S6)],[(S7),(S8),(S9)],[(SA),(S2),(S3),(S4),(S5)],[(S7),(S8),(S9)],[(S2),(S3),(S4),(S5),(S6)]],
[[],[(S8),(S9),(S10)],[(SA),(S2),(S3)],[(S4),(S5),(S6)],[(SA),(S2),(S3)],[(S5),(S6),(S7)],[(SA),(S2),(S3)],[(S4),(S5),(S6),(S7)],[(S8),(S9),(S10)],[(S2),(S3),(S4)],[(S5),(S6),(S7)],[(S8),(S9),(S10)],[(S3),(S4),(S5)],[(S8),(S9),(S10)],[(S4),(S5),(S6)],[(SA),(S2),(S3)],[(S8),(S9),(S10)],[(S5),(S6),(S7)],[(SA),(S2),(S3)],[(S5),(S6),(S7)],[(S2),(S3),(S4)],[(S5),(S6),(S7)],[(SA),(S2),(S3),(S4)],[(S8),(S9),(S10)],[(SA),(S2),(S3),(S4)],[(S5),(S6),(S7)],[(S8),(S9),(S10)],[(S2),(S3),(S4),(S5)],[(S8),(S9),(S10)],[(S3),(S4),(S5),(S6)],[(S8),(S9),(S10)],[(S4),(S5),(S6),(S7)],[(SA),(S2),(S3)],[(S8),(S9),(S10)],[(SA),(S2),(S3),(S4),(S5)],[(S8),(S9),(S10)],[(S2),(S3),(S4),(S5),(S6)],[(S8),(S9),(S10)],[(S3),(S4),(S5),(S6),(S7)]],
[[],[(SA),(S2),(S3),(S4)],[(S5),(S6),(S7)],[(S8),(S9),(S10)],[(SA),(S2),(S3),(S4)],[(S6),(S7),(S8)],[(SA),(S2),(S3),(S4)],[(S7),(S8),(S9)],[(SA),(S2),(S3),(S4)],[(S8),(S9),(S10)],[(S5),(S6),(S7)],[(SA),(S2),(S3),(S4)],[(S5),(S6),(S7),(S8)],[(SA),(S2),(S3),(S4)],[(S6),(S7),(S8),(S9)],[(SA),(S2),(S3),(S4)],[(S7),(S8),(S9),(S10)],[(SA),(S2),(S3),(S4)],[(S5),(S6),(S7),(S8),(S9)],[(SA),(S2),(S3),(S4)],[(S6),(S7),(S8),(S9),(S10)]],[[],[(S2),(S3),(S4),(S5)],[(S6),(S7),(S8)],[(S2),(S3),(S4),(S5)],[(S7),(S8),(S9)],[(S2),(S3),(S4),(S5)],[(S8),(S9),(S10)],[(S2),(S3),(S4),(S5)],[(S6),(S7),(S8),(S9)],[(S2),(S3),(S4),(S5)],[(S7),(S8),(S9),(S10)],[(S2),(S3),(S4),(S5)],[(S6),(S7),(S8),(S9),(S10)]]
,[[],[(S3),(S4),(S5),(S6)],[(S7),(S8),(S9)],[(S3),(S4),(S5),(S6)],[(S8),(S9),(S10)],[(S3),(S4),(S5),(S6)],[(S7),(S8),(S9),(S10)]],
[[],[(S4),(S5),(S6),(S7)],[(SA),(S2),(S3)],[(S8),(S9),(S10)],[(S4),(S5),(S6),(S7)],[(S8),(S9),(S10)],[(SA),(S2),(S3)]],
[[],[(S5),(S6),(S7),(S8)],[(SA),(S2),(S3)],[(S5),(S6),(S7),(S8)],[(S2),(S3),(S4)],[(S5),(S6),(S7),(S8)],[(SA),(S2),(S3),(S4)]],
[[],[(S6),(S7),(S8),(S9)],[(SA),(S2),(S3)],[(S6),(S7),(S8),(S9)],[(S2),(S3),(S4)],[(S6),(S7),(S8),(S9)],[(S3),(S4),(S5)],[(S6),(S7),(S8),(S9)],[(SA),(S2),(S3),(S4)],[(S6),(S7),(S8),(S9)],[(S2),(S3),(S4),(S5)],[(S6),(S7),(S8),(S9)],[(SA),(S2),(S3),(S4),(S5)]],
[[],[(S7),(S8),(S9),(S10)],[(SA),(S2),(S3)],[(S4),(S5),(S6)],[(S7),(S8),(S9),(S10)],[(S2),(S3),(S4)],[(S7),(S8),(S9),(S10)],[(S3),(S4),(S5)],[(S7),(S8),(S9),(S10)],[(S4),(S5),(S6)],[(SA),(S2),(S3)],[(S7),(S8),(S9),(S10)],[(SA),(S2),(S3),(S4)],[(S7),(S8),(S9),(S10)],[(S2),(S3),(S4),(S5)],[(S7),(S8),(S9),(S10)],[(S3),(S4),(S5),(S6)],[(S7),(S8),(S9),(S10)],[(SA),(S2),(S3),(S4),(S5)],[(S7),(S8),(S9),(S10)],[(S2),(S3),(S4),(S5),(S6)]],
[[],[(SA),(S2),(S3),(S4),(S5)],[(S6),(S7),(S8)],[(SA),(S2),(S3),(S4),(S5)],[(S7),(S8),(S9)],[(SA),(S2),(S3),(S4),(S5)],[(S8),(S9),(S10)],[(SA),(S2),(S3),(S4),(S5)],[(S6),(S7),(S8),(S9)],[(SA),(S2),(S3),(S4),(S5)],[(S7),(S8),(S9),(S10)],[(SA),(S2),(S3),(S4),(S5)],[(S6),(S7),(S8),(S9),(S10)]],
[[],[(S2),(S3),(S4),(S5),(S6)],[(S7),(S8),(S9)],[(S2),(S3),(S4),(S5),(S6)],[(S8),(S9),(S10)],[(S2),(S3),(S4),(S5),(S6)],[(S7),(S8),(S9),(S10)]],
[[],[(S3),(S4),(S5),(S6),(S7)],[(S8),(S9),(S10)]],
[[],[(S4),(S5),(S6),(S7),(S8)],[(SA),(S2),(S3)]],
[[],[(S5),(S6),(S7),(S8),(S9)],[(SA),(S2),(S3)],[(S5),(S6),(S7),(S8),(S9)],[(S2),(S3),(S4)],[(S5),(S6),(S7),(S8),(S9)],[(SA),(S2),(S3),(S4)]]
,[[],[(S6),(S7),(S8),(S9),(S10)],[(SA),(S2),(S3)],[(S6),(S7),(S8),(S9),(S10)],[(S2),(S3),(S4)],[(S6),(S7),(S8),(S9),(S10)],[(S3),(S4),(S5)],[(S6),(S7),(S8),(S9),(S10)],[(SA),(S2),(S3),(S4)],[(S6),(S7),(S8),(S9),(S10)],[(S2),(S3),(S4),(S5)],[(S6),(S7),(S8),(S9),(S10)],[(SA),(S2),(S3),(S4),(S5)]]
]
