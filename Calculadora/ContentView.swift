//
//  ContentView.swift
//  Calculadora
//
//  Created by Laura Belen Yachelini on 30/01/2024.
//

import SwiftUI

struct ContentView: View {
  @StateObject var viewModel: ViewModel = ViewModel()
  var body: some View {
    ZStack {
      Color.indigo.ignoresSafeArea()
      GeometryReader { proxy in
        VStack{
          VStack{
            Spacer()
            HStack{
              Text(viewModel.textFieldValue)
                .foregroundColor(.white)
                .font(.system(size: 100, weight: .regular))
                .frame(height: 100)
                
            }
          }
          VerticalButtonStyle(
            viewModel:viewModel,
            data: Matrix.firstSectionData, columns: Matrix.firstSectionGrid(proxy.size.width * 0.25), width: proxy.size.width)
          VerticalButtonStyle(
            viewModel:viewModel,
            data: Matrix.secondSectionData, columns: Matrix.secondSectionGrid(proxy.size.width * 0.25), width: proxy.size.width)
          
        }
        .background(Color.indigo)
      }

    }
  }
}

#Preview {
  ContentView()
}
