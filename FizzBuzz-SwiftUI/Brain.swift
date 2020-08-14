//
//  Brain.swift
//  FizzBuzz-SwiftUI
//
//  Created by David Gunawan on 02/07/20.
//  Copyright © 2020 David Gunawan. All rights reserved.
//

import Foundation

class Brain {
    
    func check(number: Int) -> Move {
        if isDivisibleByThreeAndFive(number: number) {
            return .fizzBuzz
        } else if isDivisibleByThree(number: number) {
            return .fizz
        } else if isDivisibleByFive(number: number) {
            return .buzz
        } else {
            return .number
        }
    }
    
    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisibleBy(divisor: 3, number: number)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(divisor: 5, number: number)
    }
    
    func isDivisibleByThreeAndFive(number: Int) -> Bool {
        return number % 3 == 0 && number % 5 == 0
    }
    
    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }
}
