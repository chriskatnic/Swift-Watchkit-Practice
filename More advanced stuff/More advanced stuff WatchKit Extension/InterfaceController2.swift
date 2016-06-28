//
//  InterfaceController.swift
//  More advanced stuff WatchKit Extension
//
//  Created by Christopher Katnic on 7/17/15.
//  Copyright (c) 2015 Christopher Katnic. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController2: WKInterfaceController {
    

    @IBOutlet weak var such_image: WKInterfaceImage!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
    }
    @IBAction func so_creative() {

        such_image.setImageNamed("Rotated 90")
        
    }
    @IBAction func such_profit() {
        
        such_image.setImageNamed("Rotated 180")
        
    }
    @IBAction func wow() {
        
        such_image.setImageNamed("Rotated 270")
        
    }
    @IBAction func very_dizzy() {
        
        such_image.setImageNamed("Normal")
        
    }
    
    //MARK: - Activation / cleanup
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
}
