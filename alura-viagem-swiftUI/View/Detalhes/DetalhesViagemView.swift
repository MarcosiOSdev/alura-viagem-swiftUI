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
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        GeometryReader { view in
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    
                    ZStack(alignment: .top) {
                        
                        Image(pacoteDeViagem.imagens[0])
                            .resizable()
                            .frame(height: 200)
                        
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image("icone-voltar")
                                .resizable()
                                .frame(width: 15, height: 25, alignment: .leading)
                                .padding([.leading, .top], 15)
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                    }
                    
                    VStack(alignment: .leading) {
                        
                        Group {
                            Text(pacoteDeViagem.titulo.uppercased())
                                .font(.custom("Avenir Black", size: 20))
                                .foregroundColor(corDaFont)
                            
                            Text(pacoteDeViagem.descricao)
                                .font(.custom("Avenir", size: 16))
                                .foregroundColor(corDaFont)
                            
                            Spacer()
                                .frame(height: 15)
                        }
                        
                        Text(pacoteDeViagem.detalhes)
                            .font(.custom("Avenir Black", size: 16))
                            .foregroundColor(corDaFont)
                            .padding(.trailing, 30)
                        
                        Spacer()
                            .frame(height: 15)
                        
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
                            
                            VStack(alignment: .trailing) {
                                Text("R$ \(pacoteDeViagem.valor)")
                                    .font(.custom("Avenir Black", size: 25))
                                    .foregroundColor(.orange)
                                
                                Text("Sem taxa em até 12x")
                                    .font(.custom("Avenir", size: 14))
                                    .foregroundColor(corDaFont)
                            }
                        }
                        .padding(.trailing, 30)
                        
                        Divider()
                        
                        Group {
                            Text("O que está incluso")
                                .font(.custom("Avenir", size: 20))
                                .foregroundColor(corDaFont)
                                .frame(minWidth: 0, maxWidth: view.size.width, alignment: .leading)
                            
                            HStack {
                                VStack(alignment: .center) {
                                    Image("icone-apartamento")
                                    Text("Apartamento")
                                        .lineLimit(1)
                                        .font(.custom("Avenir", size: 20))
                                        .foregroundColor(corDaFont)
                                }
                                
                                Divider()
                                
                                VStack(alignment: .center) {
                                    Image("icone-aviao")
                                    Text("Passagem Aérea")
                                        .lineLimit(1)
                                        .font(.custom("Avenir", size: 20))
                                        .foregroundColor(corDaFont)
                                }
                            }
                            .padding(.horizontal, 40)
                            
                            Divider()
                        }
                        .padding(.trailing, 30)
                        
                        
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Text("Escolher Opção")
                                .font(.custom("Avenir Black", size: 16))
                                .foregroundColor(.white)
                        })
                        .frame(width: view.size.width - 30, height: 40, alignment: .center)
                        .background(Color(red: 221/255, green: 58/255, blue: 126/255))
                    }
                    .padding(.leading, 20)
                    .padding(.trailing, -20)
                    
                }
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct DetalhesViagemView_Previews: PreviewProvider {
    static var previews: some View {
        DetalhesViagemView(pacoteDeViagem: pacotesDeViagem[0])
    }
}
