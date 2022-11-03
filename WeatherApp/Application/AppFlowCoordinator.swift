//
//  AppFlowCoordinator.swift
//  WeatherApp
//
//  Created by Mahmoud Abdelshafi on 31/10/2022.
//

import UIKit

final class AppFlowCoordinator {

    var navigationController: UINavigationController
    private let appDIContainer: AppDIContainer
    
    init(navigationController: UINavigationController,
         appDIContainer: AppDIContainer) {
        self.navigationController = navigationController
        self.appDIContainer = appDIContainer
    }

    func start() {
        let weatherScenesDIContainer = appDIContainer.makeWeatherScenesDiContainer()
        let flow = weatherScenesDIContainer.makeWeatherScenesRouter(navigationController: navigationController)
        flow.start()
    }
}
