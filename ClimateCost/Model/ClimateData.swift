//
//  ClimateData.swift
//  ClimateCost
//
//  Created by Didier Delhaisse on 28/07/2024.
//

import Foundation

struct ClimateData: Identifiable {
    let id = UUID().uuidString
    let region: String
    let temperatureIncrease: String
    let costPerCapita: String
}
