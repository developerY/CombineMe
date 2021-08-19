//
//  BikeView.swift
//  CombineMe
//
//  Created by Swift Developer on 8/7/20.
//
import MapKit
import SwiftUI

struct BikeStationView: View {
    @ObservedObject var viewModel = SharedBikeViewModel()
    @State var isEditMode: EditMode = .inactive
    @State private var searchText = ""
    
    
    var body: some View {
        List(searchResults) { station in
            NavigationLink(destination: BikeMapView(station: station)) {
                HStack {
                    VStack(alignment: .leading) {
                        Text(station.name)
                            .font(.headline)
                        Text("Capacity \(station.capacity)")
                            .font(.subheadline)
                    }
                }
            }.navigationBarTitle("Bike Stations")
                .navigationBarItems(trailing: EditButton())
                .environment(\.editMode, self.$isEditMode)
                .searchable(text: $searchText)            
        }
    }
    
    var searchResults: [Station] {
        if searchText.isEmpty {
            return viewModel.stations
        } else {
            return viewModel.stations.filter { $0.name.contains(searchText) }
        }
    }

}



struct BikeView_Previews: PreviewProvider {
    static var previews: some View {
        BikeStationView()
    }
}
