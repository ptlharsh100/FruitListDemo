//
//  ItemListApp.swift
//  ItemList
//
//  Created by Harsh Patel on 18/04/25.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        TextField("Search...", text: $text)
            .padding(10)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal)
            .padding(.top, 8)
    }
}
