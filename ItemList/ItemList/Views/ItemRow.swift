//
//  ItemListApp.swift
//  ItemList
//
//  Created by Harsh Patel on 18/04/25.
//

import SwiftUI

struct ItemRow: View {

    let item: ItemModel

    var body: some View {
        HStack(spacing: 12) {
            Image(item.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(RoundedRectangle(cornerRadius: 8))

            Text(item.name.capitalized)
                .frame(maxWidth: .infinity, alignment: .leading)

            Image(systemName: "chevron.right")
                .foregroundColor(.secondary)
        }
        .frame(height: 56)
        .contentShape(Rectangle())
        .listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
    }

}
