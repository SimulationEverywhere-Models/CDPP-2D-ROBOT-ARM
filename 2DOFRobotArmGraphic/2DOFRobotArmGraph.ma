[Top]
components : MotionController Homing 
out : RobotJ1 RobotEfficiency RobotJ2 
in : UserInput 
Link : UserInput UserCommand@MotionController
Link : Refficiency@MotionController RobotEfficiency
Link : RJ1@MotionController RobotJ1
Link : HCommand@MotionController HomeCommand@Homing
Link : Homed@Homing HomeDone@MotionController
Link : RJ2@MotionController RobotJ2

[MotionController]
components : Decision@ggad Motion@ggad 
out : RJ1 HCommand Refficiency RJ2 
in : UserCommand HomeDone 
Link : UserCommand UCmdIN@Decision
Link : HCmdOUT@Decision HCommand
Link : HomeDone HDoneIN@Decision
Link : RandomOut@Motion RandomIn@Motion
Link : TAWaitOUt@Motion TAWaitIN@Motion
Link : Efficiency@Motion Refficiency
Link : MCmdOUT@Decision MoveCommand@Motion
Link : CStateJ1@Motion RJ1
Link : CStateJ2@Motion RJ2
Link : MoveDone@Motion MDoneIN@Decision

[Decision]
source : DecisionType.cdd

[Motion]
source : MotionType.cdd


[Homing]
components : Joint1@ggad Joint2@ggad 
out : Homed 
in : HomeCommand 
Link : J2Homed@Joint2 J2DoneIN@Joint1
Link : HomeCommand J2HCmd@Joint2
Link : HomeCommand J1HCmd@Joint1
Link : DoneOUT@Joint1 Homed
Link : J2HomedOUT@Joint1 J2HomedIN@Joint1

[Joint1]
source : Joint1Type.cdd

[Joint2]
source : Joint2Type.cdd



