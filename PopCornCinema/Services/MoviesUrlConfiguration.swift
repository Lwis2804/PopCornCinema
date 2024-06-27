
import Foundation

struct MoviesUrlConfigu {
    var metodo : String
    var host : String
    var path : PathsProtocol // SE QUE DEBO USAR ESTE PROTOCOLO PERO NO ME QUEDA MUY CLARO PARA QUE ES 
    
    // 
    public init(metodo: String, host: String, path: PathsProtocol) {
        self.metodo = metodo
        self.host = host
        self.path = path
    }
    
    func confgUrl() -> URL? {
        guard !host.isEmpty else { return nil }
        var componentes : URLComponents = URLComponents()
        componentes.scheme = metodo
        componentes.host = host
        componentes.path = path.pathToUse // MISMA DUDA EN ESTA PARTE NO ME QUEDA CLARO EL PATH
        return componentes.url 
    }
}
