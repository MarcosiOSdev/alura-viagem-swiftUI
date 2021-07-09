//
//  ContentView.swift
//  alura-viagem-swiftUI
//
//  Created by Marcos Felipe Souza on 05/07/21.
//

import SwiftUI

struct DestaquesView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        NavigationView {
            GeometryReader { view in
                VStack {
                    HeaderView()
                        .frame(width: view.size.width, height: horizontalSizeClass == .compact ? 250 : 350, alignment: .top)
                    List(viagens) { viagem in
                        NavigationLink(destination: MapaView(coordenada: viagem.localizacao).navigationTitle("Localização")) {
                                CelulaViagemView(viagem: viagem)
                            }
                    }.navigationBarTitle("")
                }
            }.edgesIgnoringSafeArea(.all)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}


struct DestaquesView_Previews: PreviewProvider {
    static var previews: some View {
        DestaquesView()
    }
}
