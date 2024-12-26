//
//  DependencyContainerProtocol.swift
//  DependencyInjection
//
//  Created by Sourav Santra on 09/12/24.
//

import Foundation

public protocol DependencyContainerProtocol {
    func register<T>(_ service: T)
    func getService<T>(_ type: T.Type) -> T?
}
