//
//  HeaderView.swift
//  alura-viagem-swiftUI
//
//  Created by Marcos Felipe Souza on 06/07/21.
//

import SwiftUI

struct HeaderView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var isiPhone: Bool {
        horizontalSizeClass == .compact
    }
    
    var body: some View {
        GeometryReader { view in
            VStack {
                VStack {
                    Text("Alura viagem")
                        .foregroundColor(.white)
                        .font(.custom("Avenir Black", size: isiPhone ? 20 : 30))
                        .padding(.top, isiPhone ? 50 : 90)
                    
                    Text("Especial")
                        .foregroundColor(.white)
                        .font(.custom("Avenir Book", size: isiPhone ? 20 : 30))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                    
                    Text("BRASIL")
                        .foregroundColor(.white)
                        .font(.custom("Avenir Black", size: isiPhone ? 23 : 33))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 30)
                }
                .frame(width: view.size.width, height: isiPhone ? 200 : 310, alignment: .top)
                .background(Color.purple)
                
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Hotéis")
                            .font(.custom("Avenir Medium", size: isiPhone ? 17 : 24))
                            .foregroundColor(.white)
                    }
                    .frame(width: isiPhone ? 100 : 150, height: isiPhone ? 50 : 75)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.blue, lineWidth: 10)
                    )
                    .background(Color.blue)
                    .offset(x: isiPhone ? 50 : view.size.width/4)
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Pacotes")
                            .font(.custom("Avenir Medium", size: isiPhone ? 17 : 24))
                            .foregroundColor(.white)
                    }
                    .frame(width: isiPhone ? 100 : 150, height: isiPhone ? 50 : 75)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.orange, lineWidth: 10)
                    )
                    .background(Color.orange)
                    .offset(x: isiPhone ? -50 : -view.size.width/4)
                }
                .offset(y: isiPhone ? -25 : -37.5)
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView()
                .environment(\.horizontalSizeClass, .compact)
                .previewLayout(.fixed(width: 400, height: 250))
            
            HeaderView()
                .environment(\.horizontalSizeClass, .regular)
                .previewLayout(.fixed(width: 835, height: 450))
        }
        
    }
}
