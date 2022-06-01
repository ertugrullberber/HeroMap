//
//  SuperHero.swift
//  HeroMap
//
//  Created by Ertugrul Berber on 31.05.2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct SuperKahraman : Identifiable {
    var id = UUID()
    var isim : String
    var gercekIsim : String
    var gorselIsim : String
    var icon : String
    var sehir : String
    var koordinat : Koordinat
    
    var koordinatLokasyonu : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: koordinat.latitude, longitude: koordinat.longitude)
    }
    
}


struct Koordinat {
    var latitude : Double
    var longitude : Double
    
}

let batman = SuperKahraman(isim: "Batman", gercekIsim: "Bruce Wayne" , gorselIsim: "batman", icon: "batmanicon", sehir: "Gotham",  koordinat: Koordinat(latitude: 41.8337329, longitude: -87.7319639))

let superman = SuperKahraman(isim: "Superman", gercekIsim: "Clark Kent", gorselIsim: "superman",icon: "supermanicon", sehir: "Kansas",  koordinat: Koordinat(latitude: 38.4987789, longitude: -98.3200779))

let spiderman = SuperKahraman(isim: "Spiderman", gercekIsim: "Peter Parker", gorselIsim: "spiderman",icon: "spidermanicon", sehir: "New York",  koordinat: Koordinat(latitude: 40.6974881, longitude: -73.979681))

let ironman = SuperKahraman(isim: "Iron Man", gercekIsim: "Tony Stark", gorselIsim: "ironman",icon: "ironmanicon", sehir: "Los Angeles",  koordinat: Koordinat(latitude: 34.0201613, longitude: -118.6919205))

let wolverine = SuperKahraman(isim: "Wolverine", gercekIsim: "Logan", gorselIsim: "wolverine", icon: "wolverineicon", sehir: "Kanada", koordinat: Koordinat(latitude: 62.7725389, longitude: -116.1204231))

let captainAmerica = SuperKahraman(isim: "Captain America", gercekIsim: "Steve Grant Rogers", gorselIsim: "captianamerica", icon: "captainamericaicon", sehir: "New York", koordinat: Koordinat(latitude: 40.6974881, longitude: -73.979681))

let superKahramanDizisi = [batman, superman, spiderman, ironman, wolverine, captainAmerica]
