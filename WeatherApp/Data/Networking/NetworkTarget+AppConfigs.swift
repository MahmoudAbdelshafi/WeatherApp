//
//  NetworkTarget+AppConfigs.swift
//  WeatherApp
//
//  Created by Mahmoud Abdelshafi on 30/10/2022.
//

import Foundation

extension NetworkTarget {
    
    var baseURL: URL {
        guard let url = URL(string: AppConfiguration().apiBaseURL) else { fatalError("Base URL is not valid") }
        return url
    }
    
    var headers: [String : String]? {
        return [ "key": AppConfiguration().aPIKey ]
    }
}
