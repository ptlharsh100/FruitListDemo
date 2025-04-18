//
//  ItemListApp.swift
//  ItemList
//
//  Created by Harsh Patel on 18/04/25.
//

import SwiftUI

struct ContentView: View {

    @StateObject private var vm = ContentViewModel()

    @State private var showBottomSheet = false

    var body: some View {

        NavigationView {
            List {
                ImageCarouselView(selection: $vm.currentPage,
                                  images: vm.images)
                    .frame(height: 200)
                    .listRowInsets(.init())
                    .listRowSeparator(.hidden)

                Section(header:
                    SearchBar(text: $vm.searchText)
                        .padding(.vertical, 8)
                        .background(Color(.systemBackground))
                ) {

                    ForEach(vm.filteredItems) { item in
                        ItemRow(item: item)
                    }
                }
            }
            .listStyle(.plain)
            .overlay(alignment: .bottomTrailing) {
                Button {
                    showBottomSheet.toggle()
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 56, height: 56)
                        .padding()
                }
            }
            .sheet(isPresented: $showBottomSheet) {
                BottomSheetStats(
                    items: vm.filteredItems.map(\.name),
                    frequencies: vm.characterFrequencies()
                )
            }
            .navigationTitle("Fruits")
        }

    }

}
