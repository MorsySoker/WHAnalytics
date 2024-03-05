//
//  EventName.swift
//  WHBusiness
//
//  Created by Morsy Elsokary on 18/02/2024.
//

import Foundation

public typealias EventParams = [String : Any]?
public typealias EventName = String

public protocol EventNameProviderProtocol {
    var name: EventName { get }
}
