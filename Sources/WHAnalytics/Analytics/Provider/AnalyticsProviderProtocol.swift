//
//  AnalyticsProviderProtocol.swift
//  WHBusiness
//
//  Created by Morsy Elsokary on 18/02/2024.
//

import Foundation

public protocol AnalyticsProviderProtocol: AnyObject {
    var providerType: AnalyticsServiceProvider { get }
    func log<Event>(event: Event) where Event: EventProviderProtocol
    func setDefaultEventParameters(_ params: EventParams)
    func setUserID(_ id: String)
    func setUserProperty(for property: String, value: String)
}

extension AnalyticsProviderProtocol {
    public var providerType: AnalyticsServiceProvider {
        .default
    }
}
