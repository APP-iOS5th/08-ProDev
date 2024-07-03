//
//  ContentView.swift
//  LocalApp
//
//  Created by Jungman Bae on 7/3/24.
//

import SwiftUI

struct ContentView: View {
    @State var changeColor = false
    var body: some View {
        VStack {
            Text(LocalizedStringKey("greeting-label"))
            // Text, Button 는 LocalizedStringKey 를 직접 넣을 수 있다.
            Text("greeting-label")
            Button("button-label") {
                changeColor.toggle()
            }
        }
        .padding()
        .background(changeColor ? Color.red : Color.yellow)
    }
}

#Preview("기본 - 한국어") {
    ContentView()
}

// 언어 미리보기 설정
#Preview("English") {
    ContentView()
        .environment(\.locale, .init(identifier: "en"))
}

#Preview("French") {
    ContentView()
        .environment(\.locale, .init(identifier: "fr"))
}

#Preview("Spanish") {
    ContentView()
        .environment(\.locale, .init(identifier: "es"))
}
