# WearableActivity2
Q1..On the IOS side, what function is used to receive messages from the watch?
            
           func session(session: WCSession, didReceiveMessage message: [String : AnyObject], replyHandler: ([String : AnyObject]) -> Void)

O2...When receiving messages from the watch, you need to use a closure function. What is the reason why a closure is used?
           When we want to send acknowledgement back to watch that ios app received a message then we have need to use reply handler.
           With replyhandler we can pass the string key value which we want to receive as an acknowledgement.
           
           
           
           
       
