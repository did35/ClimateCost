//
//  ContentView.swift
//  ClimateCost
//
//  Created by Didier Delhaisse on 28/07/2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @StateObject private var vm = ClimateViewModel()
    
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.sectionHeader, id: \.self) { title in
                    Section(header: Text(title)) {
                        title == "Explanation" ? AnyView(explanation) : AnyView(climateData)
                    }
                }
            }
            .navigationTitle("Climate Data")
        }
    }
}

// MARK: - Extension
extension ContentView {
    private var explanation: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("This app provides data on the estimated temperature increase and the associated cost per capita for different regions.")
                .font(.body)
            Text("Temperature Increase:")
                .fontWeight(.bold) +
            Text(" The expected temperature rise for the region based on its current emissions for 2050.")
            Text("Cost per Capita:")
                .fontWeight(.bold) +
            Text(" The estimated annual cost per person for the region to achieve zero emissions by 2050.")
        }
        .padding(.vertical, 5)
    }
    
    private var climateData: some View {
        ForEach(vm.climateData) { data in
            VStack(alignment: .leading) {
                Text(data.region)
                    .font(.headline)
                HStack {
                    Text("Temperature Increase:")
                        .fontWeight(.bold)
                    Text(data.temperatureIncrease)
                }
                HStack {
                    Text("Cost per Capita:")
                        .fontWeight(.bold)
                    Text(data.costPerCapita)
                }
            }
            .padding(.vertical, 5)
        }
    }
}

// MARK: - Preview
#Preview {
    ContentView()
}
