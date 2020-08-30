//
//  Silla.swift
//  EstadinatorSwift
//
//  Created by Samuel Vieira on 29/08/20.
//  Copyright © 2020 Zoomers. All rights reserved.
//

import Foundation

class Silla {
    var fila: Int
    var columna: Int
    var estado: Int
    
    init() {
        fila = 0
        columna = 0
        estado = -1
    }
    init(fila: Int, columna: Int) {
        self.fila = fila
        self.columna = columna
        self.estado = -1
    }
    func setFila(x: Int) {
        fila = x
    }
    func setColumna(x: Int) {
        columna = x
    }
    func getEstado() -> Int {
        return estado
    }
    func cambiarEstado(nuevoEstado: Int) {
        estado = nuevoEstado
    }
}
