//
//  ViewController.swift
//  Ecuacion2do
//
//  Created by Jesús Heriberto Vásquez Sánchez on 15/10/18.
//  Copyright © 2018 Jesús Heriberto Vásquez Sánchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfA: UITextField!
    @IBOutlet weak var tfB: UITextField!
    @IBOutlet weak var tfC: UITextField!
    @IBOutlet weak var tfRaiz1: UITextField!
    @IBOutlet weak var tfRaiz2: UITextField!
    
    @IBAction func resolver(_ sender: UIButton) {
        let a = Double(tfA.text!)!
        let b = Double(tfB.text!)!
        let c = Double(tfC.text!)!
        let modelo = Ecuacion2(a,b,c)
        let raices = modelo.calcularRaices()
        tfRaiz1.text = raices.raiz1
        tfRaiz2.text = raices.raiz2
    }
    
    //Regreso
    @IBAction func regresar(segue: UIStoryboardSegue){
        print("Regreso")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

