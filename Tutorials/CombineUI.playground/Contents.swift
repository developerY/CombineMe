//: A UIKit based Playground for presenting user interface
  
import SwiftUI
import Combine
import PlaygroundSupport


/*<Int> < Never>
let publisherSequ = [1,2,3,4,5].publisher
let subscriptionSequ = publisherSequ
    //.map{Int($0)}
    .sink {value in
        value
    }*/

struct ContentView: View {
    //var num: Int
    var body: some View {
        Text("Hi")
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current
    .setLiveView(ContentView())
