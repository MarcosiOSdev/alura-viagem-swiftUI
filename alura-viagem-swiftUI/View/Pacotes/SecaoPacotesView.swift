//
//  PacotesViagemView.swift
//  alura-viagem-swiftUI
//
//  Created by Marcos Felipe Souza on 07/07/21.
//

import SwiftUI

struct SecaoPacotesView: View {
    
    var nomeDaSecao: String
    var pacotes: [PacoteDeViagem]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(nomeDaSecao)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(pacotes) { pacote in
                        NavigationLink(destination:
                                        DetalhesViagemView(pacoteDeViagem: pacote)
                                        .navigationBarTitle("")
                                        .navigationBarHidden(true)
                        ){
                            CelulaPacoteViagemView(pacoteDeViagem: pacote)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
        }
        .frame(height: 300)
        .background(Color(red: 247/255, green: 247/255, blue: 247/255))
    }
}

struct SecaoPacotesView_Previews: PreviewProvider {
    static var previews: some View {
        SecaoPacotesView(nomeDaSecao: pacotesDeViagem[0].categoria.rawValue, pacotes: pacotesDeViagem)
    }
}
