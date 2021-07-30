//: [Previous](@previous)

import Foundation
import SwiftUI
import PlaygroundSupport



var greeting = "Hello, playground"

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("hi")
            AsyncImage(url: URL(string: "https://www.hackingwithswift.com/img/paul@2x.png"))
        }
    }
}

PlaygroundPage.current
    .setLiveView(ContentView())





//: [Next](@next)
