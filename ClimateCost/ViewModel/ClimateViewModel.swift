//
//  ClimateViewModel.swift
//  ClimateCost
//
//  Created by Didier Delhaisse on 28/07/2024.
//

import Foundation

class ClimateViewModel: ObservableObject {
    @Published var climateData: [ClimateData] = []
    @Published var sectionHeader = ["Explanation", "Climate Data"]
    
    init() {
        loadClimateData()
    }
    
    func loadClimateData() {
        climateData = [
            ClimateData(region: "Europe", temperatureIncrease: "0.03°C", costPerCapita: "$4,000/year")
            // Add more region as needed.
        ]
    }
}
