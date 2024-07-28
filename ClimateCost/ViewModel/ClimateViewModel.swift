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
    @Published var explanationText = [
        "This app provides data on the estimated temperature increase and the associated cost per capita for different regions.",
        "Temperature Increase:",
        "The expected temperature rise for the region based on its current emissions for 2050.",
        "Cost per Capita:",
        "The estimated annual cost per person for the region to achieve zero emissions by 2050."
    ]
    
    init() {
        loadClimateData()
    }
    
    private func loadClimateData() {
        climateData = [
            ClimateData(region: "Europe", temperatureIncrease: "0.03°C", costPerCapita: "+/- $4,000/year")
            // Add more region as needed.
        ]
    }
}
