---- MODULE semaphore ----

VARIABLE color

TypeOK == color \in {"red", "green", "yellow"}


Init == color = "red"


TurnGreen ==
    /\ color = "red"
    /\ color = "green"

TurnYellow ==
    /\ color = "green"
    /\ color = "yellow"

TurnRed ==
    /\ color = "yellow"
    /\ color = "red"

Next == 
    \/ TurnGreen
    \/ TurnYellow
    \/ TurnRed

====