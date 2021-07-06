//
//  ContentView.swift
//  alura-viagem-swiftUI
//
//  Created by Marcos Felipe Souza on 05/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            
            VStack {
                VStack {
                    Text("Alura viagem")
                        .foregroundColor(.white)
                        .font(.custom("Avenir Black", size: 20))
                        .padding(.top, 60)
                    
                    Text("Especial")
                        .foregroundColor(.white)
                        .font(.custom("Avenir Book", size: 20))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    
                    Text("BRASIL")
                        .foregroundColor(.white)
                        .font(.custom("Avenir Black", size: 23))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                }
                .frame(width: geometry.size.width, height: 200, alignment: .top)
                .background(Color.purple)
                
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Hotéis")
                            .font(.custom("Avenir Medium", size: 17))
                            .foregroundColor(.white)
                    }
                    .frame(width: 100, height: 50)
                    .background(Color.blue)
                    .offset(x: 50)
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Pacotes")
                            .font(.custom("Avenir Medium", size: 17))
                            .foregroundColor(.white)
                    }
                    .frame(width: 100, height: 50)
                    .background(Color.orange)
                    .offset(x: -50)
                }
                .offset(y: -25)
                
                
                List {
                    Text("Rio de Janeiro")
                    Text("Ceara")
                    Text("Atibaia")
                    Text("Rio de Janeiro")
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
