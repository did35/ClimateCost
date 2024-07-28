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
            ForEach(vm.explanationText, id: \.self) { text in
                if text == "Temperature Increase:" || text == "Cost per Capita:" {
                    Text(text)
                        .fontWeight(.bold)
                } else {
                    Text(text)
                }
            }
        }
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
