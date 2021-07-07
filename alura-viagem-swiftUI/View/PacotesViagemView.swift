//
//  PacotesViagemView.swift
//  alura-viagem-swiftUI
//
//  Created by Marcos Felipe Souza on 07/07/21.
//

import SwiftUI

struct PacotesViagemView: View {
    var body: some View {
        GeometryReader { view in
            VStack {
                Image("nova-york-1")
                    .resizable()
                    .frame(width: view.size.width, height: 135, alignment: .top)
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                Text("New York")
                    .frame(minWidth: 0,
                           maxWidth: view.size.width,
                           alignment: .leading)
                    .font(.custom("Avenir Black", size: 12))
                
                Text("Aéreo + Hotel")
                    .frame(minWidth: 0,
                           maxWidth: view.size.width,
                           alignment: .leading)
                    .font(.custom("Avenir", size: 10))
                
                Text("01 de março ~ 30 de jun")
                    .frame(minWidth: 0,
                           maxWidth: view.size.width,
                           alignment: .leading)
                    .font(.custom("Avenir", size: 10))
                
                Text("A partir de")
                    .frame(minWidth: 0,
                           maxWidth: view.size.width,
                           alignment: .trailing)
                    .font(.custom("Avenir", size: 9))
                
                Text("R$ 5.829")
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
        }
        .frame(width: 180, height: 250)
    }
}

struct PacotesViagemView_Previews: PreviewProvider {
    static var previews: some View {
        PacotesViagemView()
    }
}
