[Top]
components : CMotion 
out : RobotJ1 MovingDone RobotEfficiency RobotJ2 
in : UserCmd 
Link : Effi@CMotion RobotEfficiency
Link : MvDone@CMotion MovingDone
Link : RJ1@CMotion RobotJ1
Link : UserCmd MotionCommand@CMotion
Link : RJ2@CMotion RobotJ2

[CMotion]
components : Amotion@ggad 
out : MvDone RJ1 Effi RJ2 
in : MotionCommand 
Link : RandomOut@Amotion RandomIn@Amotion
Link : MotionCommand MoveCommand@Amotion
Link : Efficiency@Amotion Effi
Link : MoveDone@Amotion MvDone
Link : CStateJ1@Amotion RJ1
Link : TAWaitOUt@Amotion TAWaitIN@Amotion
Link : CStateJ2@Amotion RJ2

[Amotion]
source : AmotionType.cdd



