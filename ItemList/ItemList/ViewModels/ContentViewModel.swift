//
//  ItemListApp.swift
//  ItemList
//
//  Created by Harsh Patel on 18/04/25.
//

import Foundation
import SwiftUI

class ContentViewModel: ObservableObject {
 
    @Published var searchText: String = ""
    @Published var currentPage: Int = 0
 
    let images: [String] = ["apple", "banana", "orange","blueberry", "grape", "melon", "kiwi"]
    
    @Published var items: [ItemModel] = [
        ItemModel(name: "apple",     imageName: "apple"),
        ItemModel(name: "banana",    imageName: "banana"),
        ItemModel(name: "orange",   imageName: "orange"),
        ItemModel(name: "blueberry", imageName: "blueberry"),
        ItemModel(name: "blackberry",imageName: "blackberry"),
        ItemModel(name: "cherry",    imageName: "cherry"),
        ItemModel(name: "grape",     imageName: "grape"),
        ItemModel(name: "melon45",     imageName: "melon"),
        ItemModel(name: "kiwi23",     imageName: "kiwi"),
        ItemModel(name: "blackberry",imageName: "blackberry"),
        ItemModel(name: "cherry",    imageName: "cherry"),
        ItemModel(name: "grape",     imageName: "grape"),
        ItemModel(name: "melon",     imageName: "melon"),
        ItemModel(name: "kiwi",     imageName: "kiwi"),
        ItemModel(name: "apple123",     imageName: "apple"),
        ItemModel(name: "banana1",    imageName: "banana"),
        ItemModel(name: "orange2",   imageName: "orange"),
        ItemModel(name: "blueberry32", imageName: "blueberry"),
        ItemModel(name: "blackberry12",imageName: "blackberry"),
        ItemModel(name: "cherry21",    imageName: "cherry"),
        ItemModel(name: "grape4",     imageName: "grape"),
        ItemModel(name: "melon6",     imageName: "melon"),
        ItemModel(name: "kiwi7",     imageName: "kiwi"),
        ItemModel(name: "blackberry9",imageName: "blackberry"),
        ItemModel(name: "cherry0",    imageName: "cherry"),
        ItemModel(name: "grape667",     imageName: "grape"),
        ItemModel(name: "melon454",     imageName: "melon"),
        ItemModel(name: "kiwi34",     imageName: "kiwi")
    ]
 
    var currentItems: [ItemModel] {
        guard currentPage < images.count else { return [] }
        let pageKey = images[currentPage]
        return items.filter { $0.imageName == pageKey }

    }
 
    var filteredItems: [ItemModel] {
        if searchText.isEmpty {
            return currentItems
        } else {
            return currentItems.filter {
                $0.name.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
 
    func characterFrequencies() -> [(Character, Int)] {
        var freq: [Character: Int] = [:]
        for item in filteredItems {
            for c in item.name {
                freq[c, default: 0] += 1
            }
        }
        return freq.sorted { $0.value > $1.value }
    }
}
 




    

    
 
