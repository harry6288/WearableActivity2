//
//  ViewController.swift
//  WearableActivity2
//
//  Created by hardeep kaur on 2019-06-27.
//  Copyright © 2019 hardeep kaur. All rights reserved.
//

import UIKit
import WatchConnectivity

class ViewController: UIViewController ,WCSessionDelegate{
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }
    
    func sessionDidBecomeInactive(_ session: WCSession) {
        
    }
    
    func sessionDidDeactivate(_ session: WCSession) {
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if (WCSession.isSupported()) {
            print("PHONE: Phone supports WatchConnectivity!")
            let session = WCSession.default
            session.delegate = self
            session.activate()
        }
            
            else {
                print("PHONE: Phone does not support WatchConnectivity")
                

    }


}
    
    
    @IBAction func ButtonPressed(_ sender: Any) {
        
        
        // check if the watch is paired / accessible
        if (WCSession.default.isReachable) {
            // construct the message you want to send
            // the message is in dictionary
            let message = ["Message": "Hello"]
            // send the message to the watch
            WCSession.default.sendMessage(message, replyHandler: nil)
        }

    }
    
}

