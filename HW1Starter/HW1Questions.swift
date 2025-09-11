//
//  HW1Questions.swift
//  HW1Starter
//
//  Created by Justin Wong on 9/8/24.
//

import Foundation

class HW1Questions {
    
    // MARK: - Task 1A. File Names
    
    /// Get the file names of a certain given length, excluding the file type name.
    /// - Parameters:
    ///   - filenames: An array of file names
    ///   - count: Target length of file name (excluding the file type)
    /// - Returns: An array of file names whose excluded file type length matches `count`.
    func getFileNames(for filenames: [String], withCount count: Int) -> [String] {
        var result = [String]()
        var name = String()
        for str in filenames {
            name = String(str.split(separator: ".", maxSplits: 1)[0])
            if name.count == count {
                result += [str]
            }
        }
        return result
    }
    
    
    
    // MARK: - Task 1B. Escape
    
    enum Direction {
        case left
        case right
        case up
        case down
    }
    
    /// Returns a boolean if we can escape given the following list of instructions and locations.
    /// - Parameters:
    ///   - directions: An array of instructions detailing how to escape
    ///   - startingIndex: The starting index
    ///   - escapeIndex: The ending index
    /// - Returns: A boolean. True if we can escape. False otherwise.
    func canEscape(withDirections directions: [[Direction]], startingIndex: Int, escapeIndex: Int) -> Bool {
        for instruction in directions{
            var i = startingIndex
            for direction in instruction {
                if direction == .right {
                    i = i + 1
                } else if direction == .left{
                    i = i - 1
                } else {
                    i = startingIndex
                    break
                }
            }
            if i == escapeIndex {
                return true
            }
        }
        return false
    }
    
}
