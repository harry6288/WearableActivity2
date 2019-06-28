//
//  InterfaceController.swift
//  WearableActivity2 WatchKit Extension
//
//  Created by hardeep kaur on 2019-06-27.
//  Copyright © 2019 hardeep kaur. All rights reserved.
//

import WatchKit
import Foundation
import WatchConnectivity


class InterfaceController: WKInterfaceController, WCSessionDelegate {
    
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }
    
    @IBOutlet weak var MessageLabel: WKInterfaceLabel!
    

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        // output a debug message to the terminal
        print("WATCH: Got a message!")
        
        // update the message with a label
        MessageLabel.setText("\(message)")

    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        if WCSession.isSupported() {
            let session = WCSession.default
            session.delegate = self
            session.activate()
        }

    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
