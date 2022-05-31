//
//  ContentView.swift
//  HeroMap
//
//  Created by Ertugrul Berber on 31.05.2022.
//

import SwiftUI

struct ListeView: View {
    var body: some View {
        NavigationView {
            ZStack{
                VStack{
                    List(superKahramanDizisi) { SuperKahraman in
                        NavigationLink(
                            destination: DetayView(secilenKahraman: SuperKahraman), label: {
                                HStack{
                                    ListeRowView(superkahraman: SuperKahraman)
                                }
                            })
                }
                }
                
            }
        }.navigationTitle(Text("Superkahraman Kitabi"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListeView()
    }
}
