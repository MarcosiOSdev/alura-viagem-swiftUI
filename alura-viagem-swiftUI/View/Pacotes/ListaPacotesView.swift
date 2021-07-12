//
//  ListaPacotesView.swift
//  alura-viagem-swiftUI
//
//  Created by Marcos Felipe Souza on 07/07/21.
//

import SwiftUI

struct ListaPacotesView: View {
    
    var categorias: [String: [PacoteDeViagem]] {
        Dictionary(grouping: pacotesDeViagem) { $0.categoria.rawValue }
    }
    
    private func setupViewAppearence() {
        UITableView.appearance().separatorStyle = .none
        UITableView.appearance().backgroundColor = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1)
        UITableViewCell.appearance().backgroundColor = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1)
        UINavigationBar.appearance().backgroundColor = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1)
    }
    
    private func rollbackViewAppearence() {
        UITableView.appearance().separatorStyle = .singleLine
        UITableView.appearance().backgroundColor = nil
        UITableViewCell.appearance().backgroundColor = nil
        UINavigationBar.appearance().backgroundColor = nil
    }
    
    var body: some View {
        NavigationView {
            //TODO: Usar Scrollview + LazyVStack ao invés de List, para remover o separatorStyle da List em iOS 14
            List(categorias.keys.sorted(), id: \.self) { chave in
                SecaoPacotesView(nomeDaSecao: chave, pacotes: categorias[chave] ?? [])
            }
            .navigationBarTitle("Pacotes")
            .padding([.leading, .trailing], -10)
            .background(Color(red: 247/255, green: 247/255, blue: 247/255))
        }
        .onAppear {
            setupViewAppearence()
        }
        .onDisappear {
            rollbackViewAppearence()
        }
    }
}

struct ListaPacotesView_Previews: PreviewProvider {
    static var previews: some View {
        ListaPacotesView()
    }
}
