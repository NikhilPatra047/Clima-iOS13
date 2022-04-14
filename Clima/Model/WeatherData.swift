//
//  WeatherData.swift
//  Clima
//
//  Created by Nikhil Kumar Patra on 12/04/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Decodable {
    let temp: Double
    let feels_like: Double
}

struct Weather: Decodable {
    let description: String
    let id: Int
}
