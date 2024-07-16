

import UIKit


class TabBarViewController : UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view1 = self.createNavController(for: MostPopularMoviesRouter.createModule(), title: "Most Popular", image: UIImage(systemName: "play.fill") ?? UIImage())
        let view2 = self.createNavController(for: NowplayingMoviesRouter.createModule(), title: "Playing Now", image: UIImage(systemName: "square.fill") ?? UIImage())
        let view3 = self.createNavController(for: PeliculasTopRouter.createModule(), title: "Top Movies", image: UIImage(systemName: "triangle.fill") ?? UIImage())
        self.viewControllers = [view1, view2, view3]

    }
 
    
    func createNavController (for mainViewController: UIViewController, title: String, image: UIImage) -> UIViewController{
        let navController = UINavigationController(rootViewController: mainViewController)
        navController.tabBarItem.title = "\(title)"
        mainViewController.navigationItem.title = "\(title)"
        navController.tabBarItem.image = image
        mainViewController.navigationItem.backButtonTitle = "Atras"
        return navController
    }
    
}
