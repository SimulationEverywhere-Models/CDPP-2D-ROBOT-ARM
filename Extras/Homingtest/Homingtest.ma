[Top]
components : Homing 
out : HomeDoneIN 
in : HCommandOUT 
Link : HCommandOUT HomeCommandIN@Homing
Link : HomedOUT@Homing HomeDoneIN

[Homing]
components : Joint1@ggad Joint2@ggad 
out : HomedOUT 
in : HomeCommandIN 
Link : J2Homed@Joint2 J2Done@Joint1
Link : Done@Joint1 HomedOUT
Link : HomeCommandIN J2HCmd@Joint2
Link : HomeCommandIN J1HCmd@Joint1
Link : J2HomedOUT@Joint1 J2HomedIN@Joint1

[Joint1]
source : Joint1Type.cdd

[Joint2]
source : Joint2Type.cdd



