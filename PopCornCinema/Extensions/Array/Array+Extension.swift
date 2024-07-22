//
//  Array+Extension.swift
//  PopCornCinema
//
//  Created by LUIS GONZALEZ on 20/07/24.
//

import Foundation


extension Array {
    func returnInfo(fromModeloMovies movies: ModeloMovies ) -> [String] {
        var aux: [String] = []
        aux.append(movies.title ?? "")
        aux.append(movies.overview ?? "")
        return aux
    }
}
