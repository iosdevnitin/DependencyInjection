//
//  Resolver.swift
//  DependencyInjection
//
//  Created by Sourav Santra on 09/12/24.
//

import Foundation


public final class Resolver: ResolverProtocol {
    private let container: DependencyContainerProtocol
    
    public init(container: DependencyContainerProtocol = DependencyContainer.shared) {
        self.container = container
    }
    
    public func resolve<T>(_ type: T.Type) -> T? {
        return container.getService(type)
    }
    
    public func resolveRequired<T>(_ type: T.Type) -> T {
        guard let service = resolve(type)
        else {
            fatalError("Dependency of type \(T.self) is not registered.")
        }
        return service
    }
}
