//
//  DependencyContainer.swift
//  DependencyInjection
//
//  Created by Sourav Santra on 09/12/24.
//

import Foundation

public final class DependencyContainer: DependencyContainerProtocol {
    public static let shared = DependencyContainer()
    
    private var services: [String: Any] = [:]
    
    private init() { }
    
    public func register<T>(_ service: T) {
        let key = String(describing: T.self)
        services[key] = service
    }
    
    public func getService<T>(_ type: T.Type) -> T? {
        let key = String(describing: type)
        return services[key] as? T
    }
}


