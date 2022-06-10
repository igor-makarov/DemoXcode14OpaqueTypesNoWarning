//
//  OpaqueTypesNoWarning.swift
//  DemoXcode14OpaqueTypesNoWarning
//
//  Created by Igor Makarov on 10/06/2022.
//

import Foundation

extension Comparable {
    public var descending: some Comparable { InvertedComparable(self) }
}

struct InvertedComparable<T: Comparable>: Comparable {
    private let wrapped: T

    public static func < (lhs: Self, rhs: Self) -> Bool { lhs.wrapped > rhs.wrapped }
    public static func <= (lhs: Self, rhs: Self) -> Bool { lhs.wrapped >= rhs.wrapped }
    public static func >= (lhs: Self, rhs: Self) -> Bool { lhs.wrapped <= rhs.wrapped }
    public static func > (lhs: Self, rhs: Self) -> Bool { lhs.wrapped < rhs.wrapped }

    fileprivate init(_ wrapped: T) {
        self.wrapped = wrapped
    }
}

