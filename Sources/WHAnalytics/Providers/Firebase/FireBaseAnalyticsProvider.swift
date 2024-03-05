//
//  FireBaseAnalyticsProvider.swift
//  WHBusiness
//
//  Created by Morsy Elsokary on 18/02/2024.
//

import Foundation
import FirebaseCore
import FirebaseAnalytics

final class FireBaseAnalyticsProvider: AnalyticsProviderProtocol {    
    let providerType: AnalyticsServiceProvider = .firebase
    
    func log<Event>(event: Event) where Event : EventProviderProtocol {
        let name = event.name
        let params = event.params
        Analytics.logEvent(name, parameters: params ?? nil)
    }
    
    func setDefaultEventParameters(_ params: EventParams) {
        Analytics.setDefaultEventParameters(params)
    }
    
    func setUserID(_ id: String) {
        Analytics.setUserID(id)
    }
    
    func setUserProperty(for property: String, value: String) {
        Analytics.setUserProperty(value, forName: property)
    }
}
