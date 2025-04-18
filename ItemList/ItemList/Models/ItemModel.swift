//
//  ItemListApp.swift
//  ItemList
//
//  Created by Harsh Patel on 18/04/25.
//

import Foundation

struct ItemModel: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
}
