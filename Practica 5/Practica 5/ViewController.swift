//
//  ViewController.swift
//  Practica 5
//
//  Created by Osasu sanchez on 7/11/25.
//

import UIKit

class ViewController: UIViewController {
 
    
    @IBOutlet weak var lbNumeros: UILabel!
    var operacion = ""
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func resultado(_ sender: Any) {
        
        let nume = NSExpression(format: operacion)
        guard let resultado = nume.expressionValue(with: nil, context: nil) as? NSNumber else {
            lbNumeros.text = "Error"
            return
        }
        lbNumeros.text = resultado.stringValue
    }
    
    @IBAction func reset(_ sender: Any) {
        lbNumeros.text = ""
        operacion = ""
    }
   
    @IBAction func add0(_ sender: Any) {
       addNumero("0")
        
    }
    @IBAction func add1(_ sender: Any) {
        addNumero("1")
    }
    @IBAction func add2(_ sender: Any) {
        addNumero("2")
    }
    @IBAction func add3(_ sender: Any) {
        addNumero("3")
    }
    @IBAction func add4(_ sender: Any) {
        addNumero("4")
    }
    @IBAction func add5(_ sender: Any) {
        addNumero("5")
    }
    @IBAction func add6(_ sender: Any) {
        addNumero("6")
    }
    @IBAction func add7(_ sender: Any) {
        addNumero("7")
    }
    @IBAction func add8(_ sender: Any) {
        addNumero("8")
    }
    @IBAction func add9(_ sender: Any) {
        addNumero("9")
    }
   
    @IBAction func addSuma(_ sender: Any) {
        lbNumeros.text = (lbNumeros.text ?? "") + "+"
        operacion = operacion + "+"
    }
    @IBAction func addRest(_ sender: Any) {
        lbNumeros.text = (lbNumeros.text ?? "") + "-"
        operacion = operacion + "-"
    }
    @IBAction func addMulti(_ sender: Any) {
       
        lbNumeros.text = (lbNumeros.text ?? "") + "x"
        operacion = operacion + "*"
    }
    @IBAction func addDivis(_ sender: Any) {
        lbNumeros.text = (lbNumeros.text ?? "") + "÷"
        operacion = operacion + "/"
    }
    func addNumero(_ n: String) {
        lbNumeros.text = ((lbNumeros.text ?? "")) + n
        operacion += n
    }
}
