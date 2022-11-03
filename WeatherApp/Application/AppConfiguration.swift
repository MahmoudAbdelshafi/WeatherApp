//
//  AppConfiguration.swift
//  WeatherApp
//
//  Created by Mahmoud Abdelshafi on 30/10/2022.
//

import Foundation

final class AppConfiguration {
    
    lazy var apiBaseURL: String = {
        guard let apiBaseURL = Bundle.main.object(forInfoDictionaryKey: "ApiBaseURL") as? String else {
            fatalError("ApiBaseURL must not be empty in plist")
        }
        return apiBaseURL
    }()
    
    lazy var aPIKey: String = {
        guard let apiBaseURL = Bundle.main.object(forInfoDictionaryKey: "APIKey") as? String else {
            fatalError("APIKey must not be empty in plist")
        }
        return apiBaseURL
    }()
    
}
