//
//  MoviesWebService.swift
//  PopCornCinema
//
//  Created by LUIS GONZALEZ on 26/06/24.
//

import Foundation

protocol NetworkApiProtocol : AnyObject {
    var urlConfiguration : MoviesUrlConfigu { get set }
    //DUDA EN LA COMPOSICION DE ESTOS DATOS DE ENTRADA DE LA FUNCION
    func consumeService<T: Decodable> (withCompilationHnadler handler : @escaping (Result <T, ErrorWebService>) -> Void) // PORQUE REGRESO UN VOID, QUE ES UN VOID
}

class MoviesWebService : NetworkApiProtocol {
    var urlConfiguration: MoviesUrlConfigu
    
    init(urlConfiguration: MoviesUrlConfigu) {
        self.urlConfiguration = urlConfiguration
    }
    //scaping se utiliza en Swift para indicar que el cierre puede seguir siendo ejecutado después de que la función haya finalizado
    func consumeService<T>(withCompilationHnadler handler: @escaping (Result<T, ErrorWebService>) -> Void) where T : Decodable {
        guard let url = urlConfiguration.confgUrl() else {
            handler(.failure(.wrongUrl))//PORUQE PARA LLAMAR A FAILURE ES ENTRE PARENTESIS Y NO DIRECTO CON PUNTO
        return}
        var strUrl = "\(url)"
        strUrl = strUrl.replacingOccurrences(of: "%3F", with: "?")
        URLSession.shared.dataTask(with: .init(url: URL(string: strUrl) ?? URL(fileURLWithPath: ""))){ data, response, _ in
            guard let data = data, let response = response as?
                    HTTPURLResponse,(200...299).contains(response.statusCode) else {
                handler(.failure(.wrongJson))
                return
            }
            if let json = try? JSONDecoder().decode(T.self, from: data) {
                handler(.success(json))
            }else {
                handler(.failure(.wrongResponse))
            }
        }.resume()
    }
    
    
}
