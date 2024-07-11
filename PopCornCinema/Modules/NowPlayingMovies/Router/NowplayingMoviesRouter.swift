

import UIKit

class NowplayingMoviesRouter {
	
    static func createModule() -> UIViewController {
        
        let view = NowplayingMoviesViewController()
        let presenter = NowplayingMoviesPresenter()
        let interactor = NowplayingMoviesInteractor()
        let router = NowplayingMoviesRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension NowplayingMoviesRouter: NowplayingMovies_PresenterToRouterProtocol {
    
}
