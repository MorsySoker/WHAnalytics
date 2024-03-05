//
//  Analytics-EnvironmentKey.swift
//  WHBusiness
//
//  Created by Morsy Elsokary on 21/02/2024.
//

import SwiftUI

private struct Analytics: EnvironmentKey {
    static var defaultValue: AnalyticsProviderProtocol = AnalyticsProvider(
        providers: [FireBaseAnalyticsProvider()]
    )
}

extension EnvironmentValues {
    var analytics: AnalyticsProviderProtocol {
        get { self[Analytics.self] }
        set {
            self[Analytics.self] = newValue
        }
    }
}
