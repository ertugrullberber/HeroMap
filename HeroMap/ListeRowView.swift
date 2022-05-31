//
//  ListeRowView.swift
//  HeroMap
//
//  Created by Ertugrul Berber on 31.05.2022.
//

import SwiftUI

struct ListeRowView: View {
    var superkahraman : SuperKahraman
    var body: some View {
        HStack{
            Spacer()
            Image(superkahraman.gorselIsim)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 150, alignment: .leading)
                .clipShape(Circle())
            Spacer()
            VStack{
                Text(superkahraman.isim)
                    .font(.title)
                    .bold()
                Text(superkahraman.gercekIsim)
                    .font(.title)
        }
            Spacer()
    }
}
}
struct ListeRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListeRowView(superkahraman: batman)
    }
}
