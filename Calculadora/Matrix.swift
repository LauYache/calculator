//
//  Matrix.swift
//  Calculadora
//
//  Created by Laura Belen Yachelini on 30/01/2024.
//

import Foundation
import UIKit
import SwiftUI

struct Matrix {
  //KeyBoards of the first section of the calculator
  static let firstSectionData: [KeyBoardButton] = [
    .init(title: "AC", textColor: .black, backgroundColor: customLightGray, isDoubleWidth: false, type: .reset),
    .init(title: "+/-", textColor: .black, backgroundColor: customLightGray, isDoubleWidth: false, type: .reset),
    .init(title: "%", textColor: .black, backgroundColor: customLightGray, isDoubleWidth: false, type: .reset),
    .init(title: "/", textColor: .white, backgroundColor: customOrange, isDoubleWidth: false, type: .reset),
    .init(title: "7", textColor: .indigo, backgroundColor: customGray, isDoubleWidth: false, type: .number(7)),
    .init(title: "8", textColor: .indigo, backgroundColor: customGray, isDoubleWidth: false, type: .number(8)),
    .init(title: "9", textColor: .indigo, backgroundColor: customGray, isDoubleWidth: false, type: .number(9)),
    .init(title: "X", textColor: .white, backgroundColor: customOrange, isDoubleWidth: false, type: .operation(.multiplication)),
    .init(title: "4", textColor: .indigo, backgroundColor: customGray, isDoubleWidth: false, type: .number(4)),
    .init(title: "5", textColor: .indigo, backgroundColor: customGray, isDoubleWidth: false, type: .number(5)),
    .init(title: "6", textColor: .indigo, backgroundColor: customGray, isDoubleWidth: false, type: .number(6)),
    .init(title: "-", textColor: .white, backgroundColor: customOrange, isDoubleWidth: false, type: .reset),
    .init(title: "1", textColor: .indigo, backgroundColor: customGray, isDoubleWidth: false, type: .number(1)),
    .init(title: "2", textColor: .indigo, backgroundColor: customGray, isDoubleWidth: false, type: .number(2)),
    .init(title: "3", textColor: .indigo, backgroundColor: customGray, isDoubleWidth: false, type: .number(3)),
    .init(title: "+", textColor: .white, backgroundColor: customOrange, isDoubleWidth: false, type: .operation(.sum)),
  ]
  
  //Second section of the calculator
  static let secondSectionData: [KeyBoardButton] = [
    .init(title: "0", textColor: .indigo, backgroundColor: customGray, isDoubleWidth: true, type: .number(2)),
    .init(title: ",", textColor: .indigo, backgroundColor: customGray, isDoubleWidth: false, type: .reset),
    .init(title: "=", textColor: .white, backgroundColor: customOrange, isDoubleWidth: false, type: .result),
    
  ]
  
  //Closure that accepts a parameter: the width of the item in the grid
  static let firstSectionGrid: (CGFloat) -> [GridItem] = { width in
    return Array(repeating: GridItem(.flexible(minimum: width), spacing: 0), count: 4 )
    
  }
  
  static let secondSectionGrid: (CGFloat) -> [GridItem] = { width in
    return [
      GridItem(.flexible(minimum: width * 2), spacing: 0),
      GridItem(.flexible(minimum: width), spacing: 0),
      GridItem(.flexible(minimum: width), spacing: 0),
    ]
    
  }
}
                                                         
