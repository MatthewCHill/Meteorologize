//
//  CityController.swift
//  Meterologize
//
//  Created by Maxwell Poffenbarger on 2/6/23.
//

import Foundation

class CityController {

	// MARK: - Properties
	// Shared Instance
	static let sharedInstance = CityController()
	// Source of Truth
	var cities: [City] = []

	// MARK: - Functions
	func createCity(name: String, temp: Double, high: Int? = nil, low: Int? = nil, status: String? = nil) {
		let newCity = City(name: name, currentTemp: temp, dailyHigh: high, dailyLow: low, currentStatus: status)
		cities.append(newCity)
	}
    //if i want to update a City object. I need the new values for the properites. And i need to know what city the user is trying to update
    func updateCity(cityToUpdate: City, newName: String, newTemp: Double) {
        cityToUpdate.name = newName
        cityToUpdate.currentTemp = newTemp
        
    }
}
