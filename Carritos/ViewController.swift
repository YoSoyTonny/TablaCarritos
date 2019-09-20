//
//  ViewController.swift
//  Carritos
//
//  Created by Alumno on 9/20/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    var Carritos : [Carro] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Carritos.append(Carro(placa: "PL0Z21", modelo: "Focus", marca: "Ford", año: 1995))
        Carritos.append(Carro(placa: "AP44LA", modelo: "Roug", marca: "Nissan", año: 1995))
        Carritos.append(Carro(placa: "P2KKCK", modelo: "Higlander", marca: "Toyota", año: 1995))
        
    }
    
    //Numero de secciones
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Carritos.count
    }
    
    //contenido de fila-celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaCarrito") as?
        CeldaCarritoController
        
        celda?.lblPlaca.text = Carritos[indexPath.row].placa
        celda?.lblCarro.text = Carritos[indexPath.row].modelo
        celda?.lblMarca.text = Carritos[indexPath.row].marca
        celda?.lblAño.text = "\(Carritos[indexPath.row].año)"
        
        return celda!
    
        
    }


}

