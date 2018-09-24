//
//  ViewController.swift
//  firstApp
//
//  Created by Aula11 on 24/9/18.
//  Copyright © 2018 Juan José Camacho. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: properties

    @IBOutlet weak var nombreLbl: UILabel!
    @IBOutlet weak var nombreTxt: UITextField!
    
    //@IBOutlet weak var apellidoTxt: UITextField!
    //@IBOutlet var background: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nombreTxt.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //MARK: actions
    /**@IBAction func setResetBtn(sender: UIButton) {
       nombreLbl.text = "Nombre ???";
    }**/
    @IBAction func setResetBtn(sender: UIButton) {
     nombreLbl.text = "Hola desconocido"
     nombreTxt.text = "Introduce un nombre de usuario"
     
     }

    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    /**func textFieldDidEndEditing(textField: UITextField) {
        nombreLbl.text = textField.text

    }**/
    func textFieldDidEndEditing(textField: UITextField) {
        let saludo = "Hola "
        nombreLbl.text = saludo + textField.text!
        
    }
    
    
    
    /**@IBAction func changeColor(sender: UIButton) {
        background.backgroundColor = UIColor.redColor()
    }**/
    

}

