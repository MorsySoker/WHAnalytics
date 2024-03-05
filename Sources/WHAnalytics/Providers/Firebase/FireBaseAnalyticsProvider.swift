//
//  FireBaseAnalyticsProvider.swift
//  WHBusiness
//
//  Created by Morsy Elsokary on 18/02/2024.
//

import Foundation
import FirebaseCore
import FirebaseAnalytics

public final class FireBaseAnalyticsProvider: AnalyticsProviderProtocol {
    public let providerType: AnalyticsServiceProvider = .firebase
    
    public func log<Event>(event: Event) where Event : EventProviderProtocol {
        let name = event.name
        let params = event.params
        Analytics.logEvent(name, parameters: params ?? nil)
    }
    
    public func setDefaultEventParameters(_ params: EventParams) {
        Analytics.setDefaultEventParameters(params)
    }
    
    public func setUserID(_ id: String) {
        Analytics.setUserID(id)
    }
    
    public func setUserProperty(for property: String, value: String) {
        Analytics.setUserProperty(value, forName: property)
    }
    
    public init() {}
}
