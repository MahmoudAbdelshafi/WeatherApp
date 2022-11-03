//
//  AppDIContainer.swift
//  WeatherApp
//
//  Created by Mahmoud Abdelshafi on 30/10/2022.
//

import Foundation

final class AppDIContainer {
    
    lazy var appConfiguration = AppConfiguration()
    
    // MARK: - DIContainers of scenes
    
    func makeWeatherScenesDiContainer() -> WeatherScenesDIContainer {
      return WeatherScenesDIContainer()
    }
    
}

