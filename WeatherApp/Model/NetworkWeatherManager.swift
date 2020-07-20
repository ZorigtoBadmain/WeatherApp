//
//  NetworkWeatherManager.swift
//  WeatherApp
//
//  Created by Зоригто Бадмаин on 20.07.2020.
//  Copyright © 2020 Зоригто Бадмаин. All rights reserved.
//

import Foundation

struct NetworkWeatherManger {
    
    func fetchCurrentWeather(forCity city: String) {
        let urlString = "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=\(apiKey)&unids=metric&lang=ru"
        guard let url = URL(string: urlString) else { return }
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { (data, response, error) in
            if let data = data {
                let dataString = String(data: data, encoding: .utf8)
                print(dataString!)
            }
        }
        task.resume()
    }
}
