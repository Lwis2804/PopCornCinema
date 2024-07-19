
import Foundation

struct MostPopularResponse : Codable {
    var page : Int?
    var results : [ModeloMovies]?
    var total_pages : Int?
    var total_results : Int?
}
