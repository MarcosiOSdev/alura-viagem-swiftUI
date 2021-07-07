//
//  CelulaViagemView.swift
//  alura-viagem-swiftUI
//
//  Created by Marcos Felipe Souza on 06/07/21.
//

import SwiftUI

struct CelulaViagemView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var isiPhone: Bool {
        horizontalSizeClass == .compact
    }
    
    var viagem: Viagem
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(viagem.titulo)
                .font(.custom("Avenir", size: isiPhone ? 14 : 24))
            Image(viagem.imagem)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: isiPhone ? 125 : 300)
                .clipped()
            HStack {
                Text(viagem.quantidadeDeDias)
                    .font(.custom("Avenir", size: isiPhone ? 14 : 24))
                Spacer()
                Text(viagem.valor)
                    .font(.custom("Avenir", size: isiPhone ? 14 : 24))
            }
        }
    }
}

struct CelulaViagemView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            CelulaViagemView(viagem: viagens[0])
                .environment(\.horizontalSizeClass, .compact)
                .previewLayout(.fixed(width: 400, height: 250))
            
            CelulaViagemView(viagem: viagens[0])
                .environment(\.horizontalSizeClass, .regular)
                .previewLayout(.fixed(width: 835, height: 450))
        }
    }
}
