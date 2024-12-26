//
//  ResolverProtocol.swift
//  DependencyInjection
//
//  Created by Sourav Santra on 09/12/24.
//

import Foundation

public protocol ResolverProtocol {
    func resolve<T>(_ type: T.Type) -> T?
    func resolveRequired<T>(_ type: T.Type) -> T
}
