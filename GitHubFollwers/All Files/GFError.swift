//  GFError.swift
//  GitHubFollwers
//  Created by Ahmed Kamal on 25/04/2024.

import Foundation

enum GFError: String, Error {
    case invalidUsername  = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request! Please check your internet connection."
    case invalidResponse  = "Invalid response from the server! Please try again."
    case invalidData      = "The data received from the server was invalid! Please try agian."
}
