//
//  UiVieW+Extension.swift
//  PopCornCinema
//
//  Created by LUIS GONZALEZ on 26/06/24.
//

import UIKit

extension UIView {
   // class var identifier: String { return String(describing: self) }  //IDENTIFICAR CELDAS
   //class var nib: UINib { return UINib(nibName: identifier, bundle: .main) }
    
    @IBInspectable  //ocupar corner radius en View
    var cornerRadius: CGFloat {
        get {  return layer.cornerRadius}
        
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable  //ocupar border radius en View
    var borderWidth: CGFloat {
        get { return layer.borderWidth }
        set { layer.borderWidth = newValue }
    }
}


