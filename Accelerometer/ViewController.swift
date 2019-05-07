//
//  ViewController.swift
//  Accelerometer
//
//  Created by Jefin on 25/04/19.
//  Copyright © 2019 jefin. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
var motionmanager = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.getdata()
    }

    func getdata() {
        motionmanager.accelerometerUpdateInterval = 0.1
        motionmanager.startAccelerometerUpdates(to: OperationQueue.current!) { (data, error) in
            if let accdata = data {
                let xaccel = accdata.acceleration.x
                let yaccel = accdata.acceleration.y
                let zaccel = accdata.acceleration.z
                
                //print(String(xaccel)+" "+String(yaccel)+" "+String(zaccel))
                
            }
        }
    }
}

