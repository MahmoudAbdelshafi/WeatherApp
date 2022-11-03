//
//  Repo.swift
//  WeatherRepository
//
//  Created by Mahmoud Abdelshafi on 30/10/2022.
//

import Foundation
import Combine

protocol WeatherRepository {
    func getWeatherByCity(city: String) -> AnyPublisher<WeatherData, ProviderError>
    func getWeatherForecast(days: Int, city: String) -> AnyPublisher<[DayForcastDataModel], ProviderError>
    func searchForCities(city: String) -> AnyPublisher<[SearchDataModel] , ProviderError>
}

