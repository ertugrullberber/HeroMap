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
            Image(superkahraman.icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .leading)
                .cornerRadius(30)
            Spacer()
            VStack{
                Text(superkahraman.isim)
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.black)
                    .bold()
                Text(superkahraman.gercekIsim)
                    .fontWeight(.ultraLight)
                    .foregroundColor(Color.black)
                    
        }
            Spacer()
        }
}
}
struct ListeRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ListeRowView(superkahraman: superman)
            ListeRowView(superkahraman: spiderman)
            ListeRowView(superkahraman: batman)
            ListeRowView(superkahraman: ironman)
            ListeRowView(superkahraman: wolverine)
            ListeRowView(superkahraman: captainAmerica)
            
        }
        
    }
}
