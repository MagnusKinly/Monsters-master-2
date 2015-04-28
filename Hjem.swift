//
//  Hjem.swift
//  Monsterstartside
//
//  Created by Magnus Kinly on 26/04/15.
//  Copyright (c) 2015 MaaMetis. All rights reserved.
//

import UIKit
import Foundation


class Hjem: UIViewController {
    

    var defaults: NSUserDefaults!
    var userSettings: NSString!
    var starPoints: Int = 0
    var oldStarPoints: Int = 30
    var sundhedsPoint: NSString! = "50 / 100"
    
    
    
    
    
    @IBOutlet weak var lblsundhedsPoint: UILabel!
    


    @IBOutlet weak var lblsaveStarPoints: UILabel!
    
    
    override func viewWillAppear(animated: Bool) {
        defaults = NSUserDefaults.standardUserDefaults()
        if let user = defaults.stringForKey("currentUser"){
         //   userSettings = split(user) {$0 == ":"}
            
            if defaults.objectForKey("starPoints") != nil{
                starPoints = defaults.integerForKey("starPoints")
            }
            
            if defaults.objectForKey("newStarPoints") != nil{
            
            }
            
           // NSUserDefaults.standardUserDefaults().setObject(starPoints, forKey: "currentuser")
            // NSUserDefaults.standardUserDefaults().synchronize()
            


    
    
    lblsaveStarPoints.text = "\(starPoints + oldStarPoints)"

            
    lblsundhedsPoint.text = "\(sundhedsPoint)"





        }
        
        
    }


}