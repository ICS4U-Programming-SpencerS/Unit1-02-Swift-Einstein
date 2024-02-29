//
//  Einstein.swift
//
//  Created by Spencer Scarlett
//  Created on 2024-Feb-29
//  Version 1.0
//  Copyright (c) 2024 Spencer Scarlett. All rights reserved.
//
//  Einstein Equation Calculator


// Important module
import Foundation


// Declaring variables and constants
// Having the speed of light at a float value to get the pow function to work.
let SPEED_C: Float = 299792458.0
var energyCalculated: Float = 0
var massObjectReady: Float = 0


// For invalid inputs (strings)
enum ErrorMessages: Error {
    case invalidUserChoice
}


// Do catch, for invalid inputs!
do {
    // opening message
    print("Enter the mass of the object that you wish to calculate the speed of: ")
    // This is the input line, tr's to cast, if fail = error message
    guard let massOfObjectStr = readLine(), let massObjectReady = Float(massOfObjectStr) else {
        // throws an error if an issue happens.
        throw ErrorMessages.invalidUserChoice
    }
    // if input mass is less than 0.
    if massObjectReady <= 0 {
        print("\(massOfObjectStr) is a invalid input, number MUST be greater then 0.")
    } else {
        // if input is valid, run through calculation.
        energyCalculated = massObjectReady * (pow(SPEED_C, 2));
        print("\(energyCalculated) J's of energy")
    }
// invalid catch message
} catch ErrorMessages.invalidUserChoice {
    print("Input must be a number greater than 0.")
}
