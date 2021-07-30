//
//  GikeGridView.swift
//  CombineMe (iOS)
//
//  Created by Swift Developer on 8/9/20.
//

import SwiftUI

struct GikeGridView: View {
    @ObservedObject var viewModel = SharedBikeViewModel()
    
    // use SF Symbols
    let data = (1...1000).map { "Item \($0)" }
    
    let columns = [
        GridItem(.adaptive(minimum: 80))
    ]
    
    var body: some View {
        VStack{
            let name = viewModel.sysInfo?.name ?? "name"
            let phone = viewModel.sysInfo?.phoneNumber ?? "number"
            let stations = viewModel.stations
            Text(name + " / Phone: " + phone)
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(stations) { item in
                        VStack {
                            Capsule()
                                .fill(Color.blue)
                                .frame(height:20)
                            Text(item.name)
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        GikeGridView()
    }
}
