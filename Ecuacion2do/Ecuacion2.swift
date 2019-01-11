//
//  Ecuacion2.swift
//  Ecuacion2do
//
//  Created by Jesús Heriberto Vásquez Sánchez on 15/10/18.
//  Copyright © 2018 Jesús Heriberto Vásquez Sánchez. All rights reserved.
//

//MODELO
import Foundation

class Ecuacion2{
    var a: Double
    var b: Double
    var c: Double
    
    //Constructor
    init (_ a: Double,_ b: Double,_ c: Double){
        self.a = a
        self.b = b
        self.c = c
    }
    
    func calcularRaices() -> (raiz1: String,raiz2: String){
        let discriminante = b*b - 4*a*c
        if discriminante >= 0{
            let r1 = (-b+sqrt(discriminante))/(2*a)
            let r2 = (-b-sqrt(discriminante))/(2*a)
            
            return ("\(r1)","\(r2)")
        }else{
            return ("compleja","compleja")
        }
    }
}
