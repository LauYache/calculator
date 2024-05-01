//
//  Model.swift
//  Calculadora
//
//  Created by Laura Belen Yachelini on 30/01/2024.
//
//Modelo de datos que tiene la calculadora

import Foundation
import SwiftUI

//Tipo de tecla
struct KeyBoardButton: Hashable{
  
  let title: String
  let textColor: Color
  let backgroundColor: Color
  let isDoubleWidth: Bool
  let type: ButtonType
  
}

enum ButtonType: Hashable{
  case number(Int)
  case operation(OperationType)
  case result
  case reset
}

enum OperationType: Hashable{
  case sum
  case multiplication
}
