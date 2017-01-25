//
//  ViewController.swift
//  MAPD-124-Lesson3
//
//  Created by Yesha Modi on 2017-01-24.
//  Copyright © 2017 Yesha Modi-300895482. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*
         What does a viewDidLoad triggers
         Note: Use alert for an error otherwise it is a bad design, for debugging perpouse
         
         1. create my object for button (For alert)
         2. Setup an action sheet in 2nd commit yes and no(Handler use)
         3. Tab and show your action sheet
 
        */
        
        // Show an alert as soon as you do a view did load (As soon as you view a screen)
        //Do I need to you self keyword (this in java)
        //Why you need it?
        //self.showMyAlert() //not necessary to use self
        //showMyAlert()
    }
    //View has been render now so here you can call
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //showMyAlert()
        //Action sheets are useful, It can have multiple button (One is accepting change and one for cancel)
//        showMyActionSheet()
    }
    // Swift take type infrence automatically
    //whose view is not in the window hierarchy!
    //my custom show my alert event
    func showMyAlert(alertTitle: String, alertMessage: String) {
    // Declare a variable as a type of alert controller
        let alertController = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert)
    
        let okButton = UIAlertAction(title: "OK",style: .default, handler: nil)
        
        alertController.addAction(okButton)
        
        //Built-In view controller class which is a subclass of UI view controller
        self.present(alertController, animated:true, completion: nil)
    }
    
    /*
        Creating an action Sheet
     */
    
    func showMyActionSheet(){
        let actionSheetController = UIAlertController(title: "An Action Sheet", message: "Here's a message", preferredStyle: .actionSheet)
        
        //some kind of button
        // Handle can be used as a inline and also refer to some function too!
        // new anonomous function for we have created in handler so we have to use self as it come in UIview controller class
        let yesButton = UIAlertAction(title: "YES", style: .destructive, handler: { action in self.showMyAlert(alertTitle: "Positive", alertMessage: "You did it right!") })
        
        let noButton = UIAlertAction(title: "NO", style: .cancel, handler:  { action in self.showMyAlert(alertTitle: "Negative", alertMessage: "You missed it!") })
        
        actionSheetController.addAction(yesButton)
        actionSheetController.addAction(noButton)
        //need to present the button or alert
        
        present(actionSheetController, animated: true, completion: nil)
    
    }
    
    @IBAction func actionButtonTouched(_ sender: UIButton) {
        
        showMyActionSheet()
    }
    
}

