
buy(Chicken, Cook, Hen) :-	range(Chicken, 0, 300),	range(Cook, 0, 20),	range(Hen, 0, 33),	100 is Chicken + Cook + Hen, 100.0 is Chicken / 3 + Cook * 5 + Hen * 3.

 range(Low, Low, High).
 range(Out,Low,High) :- NewLow is Low+1, NewLow =< High, range(Out, NewLow, High).