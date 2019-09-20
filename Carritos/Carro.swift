//
//  Carro.swift
//  Carritos
//
//  Created by Alumno on 9/20/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation

class Carro
{
    var placa: String
    var modelo: String
    var marca: String
    var año : Int
    
    init(placa : String, modelo : String, marca: String, año : Int) {
        self.placa = placa
        self.modelo = modelo
        self.marca = marca
        self.año = año
    }
}
