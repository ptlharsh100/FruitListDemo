//
//  ItemListApp.swift
//  ItemList
//
//  Created by Harsh Patel on 18/04/25.
//

import SwiftUI

struct ImageCarouselView: View {
   
    @Binding var selection: Int
    let images: [String]
    
    var body: some View {
       TabView(selection: $selection) {
           ForEach(images.indices, id: \.self) { idx in
               Image(images[idx])
                   .resizable()
                   .scaledToFill()
                   .tag(idx)
           }
       }
       .tabViewStyle(PageTabViewStyle())
       .indexViewStyle(PageIndexViewStyle())
   }
}
