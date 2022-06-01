//
//  DetayView.swift
//  HeroMap
//
//  Created by Ertugrul Berber on 31.05.2022.
//

import SwiftUI

struct DetayView: View {
    var secilenKahraman : SuperKahraman
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color(red: 0.00, green: 0.00, blue: 0.00), Color(red: 0.24, green: 0.00, blue: 0.00), Color(red: 0.58, green: 0.00, blue: 0.00)], startPoint: .topLeading , endPoint: .bottomLeading)
                .edgesIgnoringSafeArea(.all)
            VStack {
                MapView(coordinate: secilenKahraman.koordinatLokasyonu)
                    .frame(height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                    .edgesIgnoringSafeArea(.top)
                    
                OzelGorselView(image:
                                Image(secilenKahraman.gorselIsim))
                .frame(width: UIScreen.main.bounds.width * 0.9,
                       height: UIScreen.main.bounds.height * 0.3,
                       alignment: .center)
                .offset(y: UIScreen.main.bounds.height * -0.25)
                .padding(.bottom, UIScreen.main.bounds.height * -0.13)
                
                VStack{
                    HStack{
                        Text(secilenKahraman.isim)
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.58, green: 0.00, blue: 0.00))
                            .shadow(radius: 20)
                            .opacity(10)
                        
                        Spacer()
                        
                        Text(secilenKahraman.gercekIsim)
                            .font(.title)
                            .foregroundColor(Color(red: 0.58, green: 0.00, blue: 0.00))
                    }
                    HStack{
                        Spacer()
                        Text(secilenKahraman.sehir)
                            .font(.title2)
                            .fontWeight(.light)
                            .bold()
                            .foregroundColor(Color(red: 0.00, green: 0.00, blue: 0.00))
                    }
                    
                    
                }.padding()
                    .offset(y: UIScreen.main.bounds.height * -0.12)
                Spacer()
                
            }
        }
        
        
    }
}

struct DetayView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            DetayView(secilenKahraman: wolverine )
            DetayView(secilenKahraman: ironman )
            
        }
        
    }
}
