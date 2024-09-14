------------------------------ MODULE Untitled ------------------------------

EXTENDS Integers
VARIABLES i, pc   

Init == (pc = "start") /\ (i = 0)

Pick == /\ pc = "start"  
        /\ i' \in 0..1000
        /\ pc' = "middle"

Add1 == /\ pc = "middle" 
        /\ i' = i + 1
        /\ pc' = "done"  
           
Next == Pick \/ Add1

=============================================================================
\* Modification History
\* Last modified Fri Sep 13 07:05:11 EDT 2024 by athanjohnson
\* Created Fri Sep 13 07:04:06 EDT 2024 by athanjohnson
