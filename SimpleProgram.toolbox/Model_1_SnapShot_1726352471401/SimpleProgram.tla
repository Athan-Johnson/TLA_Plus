--------------------------- MODULE SimpleProgram ---------------------------

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
\* Last modified Sat Sep 14 18:01:15 EDT 2024 by athan
\* Created Sat Sep 14 18:00:34 EDT 2024 by athan
