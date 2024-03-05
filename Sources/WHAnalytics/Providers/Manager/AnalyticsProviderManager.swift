//
//  AnalyticsProviderManager.swift
//  WHBusiness
//
//  Created by Morsy Elsokary on 21/02/2024.
//

import Foundation

public final class AnalyticsProvider: AnalyticsProviderProtocol {
    
    public let providers: [AnalyticsProviderProtocol]
    
    public init(providers: [AnalyticsProviderProtocol]) {
        self.providers = providers
    }
    
    public func log<Event>(event: Event) where Event : EventProviderProtocol {
        providers.forEach({ provider in
            if event.providers.contains(where: { $0 == provider.providerType }) {
                provider.log(event: event)
            }
        })
    }
    
    public func setDefaultEventParameters(_ params: EventParams) {
        providers.forEach({ provider in
            provider.setDefaultEventParameters(params)
        })
    }
    
    public func setUserID(_ id: String) {
        providers.forEach({ provider in
            provider.setUserID(id)
        })
    }
    
    public func setUserProperty(for property: String, value: String) {
        providers.forEach({ provider in
            provider.setUserProperty(for: property, value: value)
        })
    }
}
