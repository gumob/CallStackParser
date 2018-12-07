//
//  Thread+Simple.swift
//  CallStackParser
//
//  Created by kojirof on 2018/12/07.
//  Copyright © 2018 Gumob. All rights reserved.
//

import Foundation

public extension Thread {

    class var simpleCallStackSymbols: [String] {
        guard let bundleName: String = CallStackParser.bundleName else { return [] }
        return Thread.callStackSymbols
                .dropFirst()
                .map {
                    guard let module: String = $0.replacingOccurrences(of: "\\s+", with: " ", options: .regularExpression, range: nil).components(separatedBy: " ")[safe: 1],
                          module.hasPrefix(bundleName),
                          let symbol: (String, String) = CallStackParser.classAndMethodForStackSymbol($0) else { return "" }
                    let classStr: String = symbol.0.padding(toLength: 36, withPad: " ", startingAt: 0)
                    return "\(classStr) \(symbol.1)"
                }
                .filter {
                    !$0.isEmpty
                }
    }

    class var simpleCallStackString: String {
        return simpleCallStackSymbols.reversed()
                                     .enumerated()
                                     .map {
                                         let index: String = "[CallStack:\($0.0)]".padding(toLength: 16, withPad: " ", startingAt: 0)
                                         return "\(index) \($0.1)"
                                     }
                                     .reversed()
                                     .joined(separator: "\n")
    }
}
