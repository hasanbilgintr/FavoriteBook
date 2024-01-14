/*
 İnterface SwiftUI ile açıldı
 */

import SwiftUI

struct ContentView: View {
    var body: some View {
        //NavigationView nasıl storyboardda başına Navigatin Controller getiriyorduk buda öle mantığı
        NavigationView{
            List {
                //modeldeki myFavories elemanı kastediyoruz ordan görüyor
                ForEach(myFavories) { favorite in
                    //Section iç içe düzen olması için kullandık
                    //header başında // footer sonunda
                    //Section(footer: Text(favorite.title)) { altta gösterir titleyi
                    Section(header: Text(favorite.title)) {
                        ForEach(favorite.elements) { element in
                            //NavigationLink linkli yapmış olduk
                            NavigationLink(destination: DetailsView(chosenFavoriteElement: element)) {
                                Text(element.name)
                            }
                        }
                    }
                }
                //Başlık getirmiş olduk //back tuşuda bu isim oldu
            }.navigationBarTitle(Text("Favorite Book"))
        }
    }
}

#Preview {
    ContentView()
}

//SwiftUI dökümantasyon için incelenebilir
//https://developer.apple.com/xcode/swiftui/
//atil hocanın 2.kursu varmış SwfitUI üzerine incelenebilir
