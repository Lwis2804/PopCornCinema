//
//  MoviesWebService.swift
//  PopCornCinema
//
//  Created by LUIS GONZALEZ on 26/06/24.
//

import Foundation

protocol NetworkApiProtocol : AnyObject {
    var urlConfiguration : MoviesUrlConfigu { get set }
    func consumeService<T: Decodable> (withCompilationHnadler handler : @escaping (Result <T, ErrorWebService>) -> Void)
}
