//
//  InterfaceController.swift
//  More advanced stuff WatchKit Extension
//
//  Created by Christopher Katnic on 7/17/15.
//  Copyright (c) 2015 Christopher Katnic. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var super_advanced_label: WKInterfaceLabel!
    
    //rainbow text
    var super_advanced_string: NSMutableAttributedString = NSMutableAttributedString(string: "This is my advanced rainbow text")
    
    //boring text
    var super_boring_string: NSMutableAttributedString = NSMutableAttributedString(string: "This is the super boring fuck you text")
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        super_advanced_string.addAttribute(NSForegroundColorAttributeName, value: UIColor.redColor(), range: NSMakeRange(0, 4))
        super_advanced_string.addAttribute(NSForegroundColorAttributeName, value: UIColor.orangeColor(), range: NSMakeRange(5, 2))
        super_advanced_string.addAttribute(NSForegroundColorAttributeName, value: UIColor.yellowColor(), range: NSMakeRange(8, 2))
        super_advanced_string.addAttribute(NSForegroundColorAttributeName, value: UIColor.greenColor(), range: NSMakeRange(11, 8))
        super_advanced_string.addAttribute(NSForegroundColorAttributeName, value: UIColor.blueColor(), range: NSMakeRange(20, 7))
        super_advanced_string.addAttribute(NSForegroundColorAttributeName, value: UIColor.purpleColor(), range: NSMakeRange(28, 4))

        super_boring_string.addAttribute(NSForegroundColorAttributeName, value: UIColor.grayColor(), range: NSMakeRange(0, super_boring_string.length))
        
        super_advanced_label.setAttributedText(super_advanced_string)

    }

    // MARK: - switch flippah
    @IBAction func switch_flipped(value: Bool) {
        
        if value{
            
            super_advanced_label.setAttributedText(super_advanced_string)
            
        } else {
            
            super_advanced_label.setAttributedText(super_boring_string)
        }
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
