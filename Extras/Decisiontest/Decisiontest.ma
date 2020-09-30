[Top]
components : DecisionModel 
out : DoneMove DoneHome outHcmd outMovecmd 
in : Ucmd 
Link : Ucmd UserCommand@DecisionModel
Link : HomingCommand@DecisionModel outHcmd
Link : MovingCommand@DecisionModel outMovecmd
Link : DoneHome DoneHomed@DecisionModel
Link : DoneMove DoneMoving@DecisionModel

[DecisionModel]
components : DecisionAtomic@ggad 
out : HomingCommand MovingCommand 
in : UserCommand DoneHomed DoneMoving 
Link : UserCommand UserCommand@DecisionAtomic
Link : DoneHomed DoneHoming@DecisionAtomic
Link : DoneMoving DoneMotion@DecisionAtomic
Link : HomeCommand@DecisionAtomic HomingCommand
Link : MotionCommand@DecisionAtomic MovingCommand

[DecisionAtomic]
source : DecisionAtomicType.cdd



