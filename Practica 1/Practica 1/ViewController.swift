    //
    //  ViewController.swift
    //  Practica 1
    //
    //  Created by Osasu sanchez on 6/11/25.
    //

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txView: UITextView!
    @IBOutlet weak var btColor: UIButton!
    var isPresed : Bool = false
    
        // Hacer 'principal' accesible en toda la clase
    private let principal: String = """
    Hola soy osasu sanchez y estoy aprendiendo en Swift.
    Esta es la practica 1 donde estoy aprendinedo a usar un boton y un texto diferente, yo ya sabia swift antes, he hecho antes cun grado superior de DAM en el cual vimos Android y Swift y mas cosas pero esto fue lo mas me llamo la atención.
    Ahora voy a hacer un cambio en el texto ,este texto se saco de un ilo de reddid random.
    """
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txView.text = principal
        txView.backgroundColor = .clear
        
        view.backgroundColor = .white
    }
    
        // Conectar este IBAction al botón en Interface Builder (Touch Up Inside)
    @IBAction func cambiarColor(_ sender: UIButton) {
            isPresed.toggle()
        if isPresed{
            view.backgroundColor = .green
            
            txView.text = """
                Es posible que estés cansado en este momento después de haber depurado un código durante unos minutos o horas. Necesitas descansar y relajarte.
                Ser programador no es fácil y a veces es necesario tomarse unos minutos para olvidar el estrés y divertirse un poco. Solo un programador puede entender lo que se necesita y el estrés que conlleva la programación.
                Aunque estos chistes de programación requieren ser programador para entenderlos, no te preocupes si no lo eres. Aunque puedes reírte y compartirlos con tus amigos que sí son programadores.
                """
        } else {
            
            txView.text = principal
            view.backgroundColor = .white
        }
    }
}
