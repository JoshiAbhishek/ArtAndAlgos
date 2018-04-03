//  Hash Created by Alex Littlejohn

import Foundation

public func hash_combine(seed: inout UInt, value: UInt) {
    let tmp = value &+ 0x9e3779b9 &+ (seed << 6) &+ (seed >> 2)
    seed ^= tmp
}
