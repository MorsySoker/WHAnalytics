//
//  EventProtocol.swift
//  WHBusiness
//
//  Created by Morsy Elsokary on 18/02/2024.
//

import Foundation

public struct AnalyticsServiceProvider: OptionSet {
    public let rawValue: UInt
    
    public static let firebase = AnalyticsServiceProvider(rawValue: 1 << 0)
    public static let `default` = AnalyticsServiceProvider([])
    
    public init(rawValue: UInt) {
        self.rawValue = rawValue
    }
}

public protocol EventProviderProtocol: EventNameProviderProtocol {
    associatedtype RawValue: StringProtocol
    var params: EventParams? { get }
    var providers: [AnalyticsServiceProvider] { get }
}

extension EventProviderProtocol where Self: RawRepresentable, RawValue == String {
    var name: EventName {
        self.rawValue
    }
}
