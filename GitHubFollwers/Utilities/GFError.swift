import Foundation

enum GFError: String, Error {
    
    case invalidUsername    = "This username created an invalid request. Please try again."
    case unableToComplete   = "Unable to complete your request! Please check your internet connection."
    case invalidResponse    = "Invalid response from the server! Please try again."
    case invalidData        = "The data received from the server was invalid! Please try agian."
    case unableToFavorite   = "There was an error favoriting this user! please try again."
    case alreadyInFavorites = "This user is already in your favorites list!"
}
