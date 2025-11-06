//
//  ViewController.swift
//  Practica 2
//
//  Created by Osasu sanchez on 6/11/25.
//

import UIKit

class ViewController: UIViewController {
var isPresed = false
 
   
  
    @IBOutlet weak var ivBonbilla: UIImageView!
    @IBOutlet weak var btPower: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btPower.tintColor = .blue
        
        btPower.setTitle("Apagada", for: .normal)
        
        
    }
    @IBAction func power(_ sender: UIButton) {
        isPresed.toggle()
       if isPresed{
            ivBonbilla.image = UIImage(systemName: "warninglight.fill")
           btPower.setTitle("Encendido", for: .normal)
            btPower.tintColor = .black
           view.backgroundColor = .yellow
           
        }else{
            ivBonbilla.image = UIImage(systemName: "warninglight")?.withTintColor(.red)
            btPower.setTitle("Apagada", for: .normal)
            btPower.tintColor = .blue
            view.backgroundColor = .white
        }
    }


}

