//
//  ContentView.swift
//  alura-viagem-swiftUI
//
//  Created by Marcos Felipe Souza on 09/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            DestaquesView()
                .tabItem {
                    Text("Destaques")
                    Image("icone-destaques")
                }
            
            ListaPacotesView()
                .tabItem {
                    Text("Pacotes")
                    Image("icone-mala")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
