//
//  Extensions.swift
//  Binarify
//
//  Created by Nick Podratz on 09.09.15.
//  Copyright (c) 2015 Nick Podratz. All rights reserved.
//

import UIKit

extension String {
    subscript (r: Range<Int>) -> String {
        get {
            let subStart = self.startIndex.advancedBy(r.startIndex, limit: self.endIndex)
            let subEnd = subStart.advancedBy(r.endIndex - r.startIndex, limit: self.endIndex)
            return self.substringWithRange(subStart..<subEnd)
        }
    }
    func substring(from: Int) -> String {
        let end = self.characters.count
        return self[from..<end]
    }
    func substring(from: Int, length: Int) -> String {
        let end = from + length
        return self[from..<end]
    }
}