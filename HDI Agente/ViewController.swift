//
//  ViewController.swift
//  HDI Agente
//
//  Created by karim herrera on 23/04/16.
//  Copyright © 2016 In-die Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var open: UIBarButtonItem!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var usrLabel: UILabel!
    @IBOutlet weak var wallppr: UIImageView!
    @IBOutlet weak var pssLabel: UILabel!
    @IBOutlet weak var usrField1: UITextField!
    @IBOutlet weak var pssField: UITextField!
    
    @IBOutlet weak var logBtn: UIButton!
    var select = Int()
    
    var log = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        open.target = self.revealViewController()
        open.action = #selector(SWRevealViewController.revealToggle(_:))
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        /*if select == 0{
            label.text = "Inicio"
            wallppr.image = UIImage(named: "wall")
        }else{
            label.text = "1+1"
        }*/
        
        switch select {
        case 0:
            log = 0
            wallppr.image = UIImage(named: "wall")
            loged(0)
        case 1:
            loged(1)
            wallppr.image = UIImage(named: "renovadas")
            
        case 2:
            loged(1)
            wallppr.image = UIImage(named: "notificadas")
            
        case 3:
            loged(1)
            wallppr.image = UIImage(named: "canceladas")
            
        case 4:
            loged(1)
            wallppr.image = UIImage(named: "pagadas")
            
        default:
            break
        }
        
        self.usrField1.delegate = self
        self.pssField.delegate = self
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func logIn(sender: AnyObject) {
        wallppr.image = UIImage(named: "renovadas")
        log = 1
        loged(1)
    }
    
    func loged (stat : Int){
        switch stat {
        case 0:
            logBtn.hidden = false
            usrField1.hidden = false
            pssField.hidden = false
            usrLabel.hidden = false
            pssLabel.hidden = false
        case 1:
            logBtn.hidden = true
            usrField1.hidden = true
            pssField.hidden = true
            usrLabel.hidden = true
            pssLabel.hidden = true
        default:
            break
        }
    }
    
}

