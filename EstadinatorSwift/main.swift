//
//  main.swift
//  EstadinatorSwift
//
//  Created by Samuel Vieira on 29/08/20.
//  Copyright © 2020 Zoomers. All rights reserved.
//

import Foundation

var rows = 10
var cols = 10

var resp: Int

repeat {
    
    var estadio = [[Silla]]()
    var filaEstadio = [Silla]()
    for i in 0..<rows {
        filaEstadio.removeAll()
        for j in 0..<cols {
            filaEstadio.append(Silla(fila: i, columna: j))
        }
        estadio.append(filaEstadio)
    }
    var porcentaje: Double
    print("Ingrese la capacidad deseada: ")
    porcentaje = Double(readLine()!)!
    
    let total = rows * cols
    let capacidad = Double(total) * porcentaje
    
    let salto = floor(Double((cols / (Int(capacidad)/rows))))
    
    var cont = 1
    var contAsientos = 0
    
    if salto < 3 {
        print("No se cumplen las normas sanitarias con esa capacidad")
    } else {
        if salto >= 3 {
            for i in 0..<rows {
                cont -= 1
                for j in stride(from: cont, to: cols, by:Int(salto)){
                    if Double(contAsientos) < capacidad {
                        estadio[i][j].cambiarEstado(nuevoEstado: 1)
                        contAsientos += 1
                    }
                }
                if cont == 0 {
                    cont = 3
                }
            }
        }
    }
    
    for i in 0..<rows {
        for j in 0..<cols {
            if(estadio[i][j].getEstado() == 1) {
                print("&", terminator: "")
            } else {
                print(" _", terminator: "")
            }
        }
        print("\n")
    }
    print("\n")
    print("Quiere continuar? ")
    resp = Int(readLine()!)!
    
} while resp != -1





