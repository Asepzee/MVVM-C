//
//  GenericState.swift
//  MVVM-C
//
//  Created by Asep Abdul Azis on 02/11/20.
//

import Foundation
enum GenericState<T: Decodable> {
    case success(T)
    case failed
}
