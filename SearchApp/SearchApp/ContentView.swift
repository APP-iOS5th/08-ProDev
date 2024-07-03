//
//  ContentView.swift
//  SearchApp
//
//  Created by Jungman Bae on 7/3/24.
//

import SwiftUI

struct ContentView: View {
    @State var searchText = ""
    
    let petArray = ["Cat", "Dog", "Fish", "Donkey", "Canary", "Camel", "Frog"]
    
    var body: some View {
        NavigationStack {
            PetListView(animals: petArray)
        }
        .searchable(text: $searchText) {
            // searchText 가 비었을 경우, hasPrefix는 true 를 리턴
            // 배열의 모든 요소가 출력됨
            ForEach(petArray.filter { $0.hasPrefix(searchText)}, id: \.self) { name in
                Text(name)
            }
        }
    }
}

#Preview {
    ContentView()
}

struct PetListView: View {
    let animals: [String]
    var body: some View {
        List(animals, id: \.self) { animal in
            Text(animal)
        }
    }
}
