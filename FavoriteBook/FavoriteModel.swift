//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by hasan bilgin on 16.10.2023.
//

import Foundation

//Identifiable id almak için ekledik diğer türlkü listte id vericez diye şimdi oto görcek
struct FavoriteModel : Identifiable {
    //bunu zorunlu kılcak
    //var id : Int //bölede verilebilir
    var id = UUID()
    var title : String
    var elements : [FavoriteElements]
    
}


struct FavoriteElements : Identifiable {
    var id = UUID()
    var name : String
    var imagename : String
    var description : String
}

//Bands

let metallica = FavoriteElements(name: "Metallica", imagename: "metallica", description: "No 1 Music Band")
let megadeth = FavoriteElements(name: "Megadeth", imagename: "megadeth", description: "No 2 Music Band")
let ironmaiden = FavoriteElements(name: "Iron Maiden", imagename: "ironmaiden", description: "No 3 Music Band")

let favoriteBands = FavoriteModel(title: "Favorite Bands", elements: [metallica,megadeth,ironmaiden])


//Movies
let pulpfictian = FavoriteElements(name: "Pulp Fictian", imagename: "pulpfiction", description: "No 1 Movies")
let thedarkknighht = FavoriteElements(name: "The Dark Knighht", imagename: "thedarkknight", description: "No 2 Movies")
let killbill = FavoriteElements(name: "Kill Bill", imagename: "killbill", description: "No 3 Movies")

let favoriteMovies = FavoriteModel(title: "Favorite Movies", elements: [pulpfictian,thedarkknighht,killbill])

let myFavories = [favoriteBands,favoriteMovies]

