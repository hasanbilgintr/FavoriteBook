//
//  DetailsView.swift
//  FavoriteBook
//
//  Created by hasan bilgin on 16.10.2023.
//

import SwiftUI

struct DetailsView: View {
    var chosenFavoriteElement : FavoriteElements
    
    var body: some View {
        VStack{
            Image(chosenFavoriteElement.imagename).resizable().aspectRatio(contentMode: .fit)
            Text(chosenFavoriteElement.name).font(.largeTitle).padding()
            Text(chosenFavoriteElement.description)
            //Text(chosenFavoriteElement.id.uuidString)
        }
    }
}

//Preview de görünümde ne gösterilceğini belirler
#Preview {
    //test metallica ekledik
    DetailsView(chosenFavoriteElement: metallica)
}
