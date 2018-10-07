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
    @IBOutlet weak var apellidoTxt: UITextField!
    var nombre = ""
    
    
    
    @IBOutlet weak var fondoView: UIView!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nombreTxt.delegate = self;
        apellidoTxt.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //MARK: actions
    @IBAction func setResetBtn(sender: UIButton) {
     nombreLbl.text = "Hola desconocido"
     nombreTxt.text = "Introduce un nombre de usuario"
     apellidoTxt.text = "Introduce tu apellido"
     
     }

    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
   
    func textFieldDidEndEditing(textField: UITextField) {
        let saludo = "Hola "
        nombreLbl.text = saludo + textField.text!
        nombre = textField.text!
        
    }
    
    @IBAction func apellidoDidEndEditing(sender: UITextField) {
        let saludo = "Hola "
        nombreLbl.text = saludo + nombre + sender.text!
    }
    
    @IBAction func changeColor(sender: UIButton) {
        fondoView.backgroundColor = getRandomColor()
    }
    
    func getRandomColor() -> UIColor{
        let randomRed:CGFloat = CGFloat(drand48())
        let randomGreen:CGFloat = CGFloat(drand48())
        let randomBlue:CGFloat = CGFloat(drand48())
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
    

}

