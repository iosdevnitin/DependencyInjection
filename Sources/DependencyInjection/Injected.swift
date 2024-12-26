//
//  Injected.swift
//  DependencyInjection
//
//  Created by Sourav Santra on 09/12/24.
//

import Foundation

@propertyWrapper
public struct Injected<T> {
    private let resolver: ResolverProtocol
    private var service: T?
    
    public init(resolver: ResolverProtocol = Resolver(), optional: Bool = false) {
        self.resolver = resolver
        
        if optional {
            self.service = resolver.resolve(T.self)
        }
        else {
            self.service = resolver.resolveRequired(T.self)
        }
    }
    
    public var wrappedValue: T {
        guard let service = service
        else {
            fatalError("Dependency \(T.self) is not resolved.")
        }
        
        return service
    }
    
    public var projectedValue: T? {
        return service
    }
}
