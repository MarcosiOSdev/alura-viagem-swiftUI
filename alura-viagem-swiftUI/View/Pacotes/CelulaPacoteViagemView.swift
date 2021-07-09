//
//  CelulaPacoteViagemView.swift
//  alura-viagem-swiftUI
//
//  Created by Marcos Felipe Souza on 07/07/21.
//

import SwiftUI

struct CelulaPacoteViagemView: View {
    
    var pacoteDeViagem: PacoteDeViagem
    
    var body: some View {
        GeometryReader { view in
            VStack {
                Image(pacoteDeViagem.imagens.first ?? "")
                    .resizable()
                    .frame(width: view.size.width, height: 135, alignment: .top)
//                    .aspectRatio(contentMode: .fill)
                    .clipped()
                VStack {
                    Text(pacoteDeViagem.titulo)
                        .frame(minWidth: 0,
                               maxWidth: view.size.width,
                               alignment: .leading)
                        .font(.custom("Avenir Black", size: 12))
                    
                    Text(pacoteDeViagem.descricao)
                        .frame(minWidth: 0,
                               maxWidth: view.size.width,
                               alignment: .leading)
                        .font(.custom("Avenir", size: 10))
                    
                    Text(pacoteDeViagem.dataValidade)
                        .frame(minWidth: 0,
                               maxWidth: view.size.width,
                               alignment: .leading)
                        .font(.custom("Avenir", size: 10))
                    
                    Text("A partir de")
                        .frame(minWidth: 0,
                               maxWidth: view.size.width,
                               alignment: .trailing)
                        .font(.custom("Avenir", size: 9))
                    
                    Text("R$ \(pacoteDeViagem.valor)")
                        .frame(minWidth: 0,
                               maxWidth: view.size.width,
                               alignment: .trailing)
                        .font(.custom("Avenir Black", size: 16))
                        .foregroundColor(.orange)
                    
                    Text("em até 12x")
                        .frame(minWidth: 0,
                               maxWidth: view.size.width,
                               alignment: .trailing)
                        .font(.custom("Avenir", size: 9))
                    
                    Text("cancelamento Grátis")
                        .frame(minWidth: 0,
                               maxWidth: view.size.width,
                               alignment: .trailing)
                        .font(.custom("Avenir Black", size: 9))
                        .foregroundColor(.green)
                }
                .padding([.leading, .trailing, .bottom], 5)
                .padding(.top, -5)
            }
        }
        .frame(width: 180, height: 250)
        .shadow(radius: 5, x: 1, y: 1)
        .border(Color(red: 221/255, green: 221/255, blue: 221/255))
    }
}

struct CelulaPacoteViagemView_Previews: PreviewProvider {
    static var previews: some View {
        CelulaPacoteViagemView(pacoteDeViagem: pacotesDeViagem[0])
            .previewLayout(.fixed(width: 180, height: 250))
    }
}
