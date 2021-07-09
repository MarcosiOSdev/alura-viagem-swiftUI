//
//  DetalhesViagemView.swift
//  alura-viagem-swiftUI
//
//  Created by Marcos Felipe Souza on 09/07/21.
//

import SwiftUI

struct DetalhesViagemView: View {
    
    var pacoteDeViagem: PacoteDeViagem
    
    var corDaFont = Color(red: 77/255, green: 77/255, blue: 77/255)
    
    var body: some View {
        GeometryReader { view in
            VStack {
                Image(pacoteDeViagem.imagens[0])
                    .resizable()
                    .frame(height: 200)
                
                Text(pacoteDeViagem.titulo.uppercased())
                    .font(.custom("Avenir Black", size: 20))
                    .foregroundColor(corDaFont)
                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                
                Text(pacoteDeViagem.descricao)
                    .font(.custom("Avenir", size: 16))
                    .foregroundColor(corDaFont)
                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                
                Text(pacoteDeViagem.detalhes)
                    .font(.custom("Avenir Black", size: 16))
                    .foregroundColor(corDaFont)
                    .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                
                HStack {
                    VStack {
                        Text("Válido para o periodo de:")
                            .font(.custom("Avenir", size: 14))
                            .foregroundColor(corDaFont)
                            .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                        Text(pacoteDeViagem.dataValidade)
                            .font(.custom("Avenir", size: 14))
                            .foregroundColor(corDaFont)
                            .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                    }
                    VStack {
                        Text("R$ \(pacoteDeViagem.valor)")
                            .font(.custom("Avenir Black", size: 25))
                            .foregroundColor(.orange)
                            .frame(minWidth: 0, maxWidth: view.size.width, alignment: .trailing)
                        
                        Text("Sem taxa em até 12x")
                            .font(.custom("Avenir", size: 14))
                            .foregroundColor(corDaFont)
                            .frame(minWidth: 0, maxWidth: view.size.width, alignment: .trailing)
                    }
                }
                
                VStack {
                    Text("O que está incluso")
                        .font(.custom("Avenir", size: 20))
                        .foregroundColor(corDaFont)
                        .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                }
                
                HStack {
                    VStack {
                        Image("icone-apartamento")
                        Text("Apartamento")
                            .font(.custom("Avenir", size: 20))
                            .foregroundColor(corDaFont)
                            .frame(minWidth: 0, maxWidth: view.size.width, alignment: .center)
                    }
                    Spacer()
                    VStack {
                        Image("icone-aviao")
                        Text("Passagem Aérea")
                            .font(.custom("Avenir", size: 20))
                            .foregroundColor(corDaFont)
                            .frame(minWidth: 0, maxWidth: view.size.width, alignment: .center)
                    }
                }.padding(.horizontal, 40)
            }
        }
        
    }
}

struct DetalhesViagemView_Previews: PreviewProvider {
    static var previews: some View {
        DetalhesViagemView(pacoteDeViagem: pacotesDeViagem[0])
    }
}
