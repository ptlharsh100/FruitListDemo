//
//  ItemListApp.swift
//  ItemList
//
//  Created by Harsh Patel on 18/04/25.
//

import SwiftUI

struct BottomSheetStats: View {
    let items: [String]
    let frequencies: [(Character, Int)]

    var body: some View {
        VStack(spacing: 16) {
            Text("Stats")
                .font(.headline)
                .padding()
            
            Text("List (count: \(items.count))")
            
            ForEach(frequencies.prefix(3), id: \.0) { key, value in
                Text("\(key) = \(value)")
            }

            Spacer()
        }
        .padding()
    }
}
