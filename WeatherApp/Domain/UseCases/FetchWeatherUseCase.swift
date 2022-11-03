//
//  FetchWeatherUseCase.swift
//  WeatherApp
//
//  Created by Mahmoud Abdelshafi on 30/10/2022.
//

import Foundation
import Combine

protocol FetchWeatherUseCase {
    func execute(city: String) -> AnyPublisher<WeatherData, ProviderError>
}

final class DefaultFetchWeatherUseCase: FetchWeatherUseCase {

    //MARK: - Properties

    private let weatherRepository: WeatherRepository

    //MARK: - Init

    init(weatherRepository: WeatherRepository) {
        self.weatherRepository = weatherRepository
    }

    //MARK: - Methods

    func execute(city: String) -> AnyPublisher<WeatherData, ProviderError> {
        weatherRepository.getWeatherByCity(city: city)
    }
    
}
