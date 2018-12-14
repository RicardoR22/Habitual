//
//  UIViewControllerExtensions.swift
//  Habitual
//
//  Created by Ricardo Rodriguez on 12/4/18.
//  Copyright © 2018 Ricardo Rodriguez. All rights reserved.
//

import UIKit

extension UIViewController {
    static func instantiate() -> Self {
    return self.init(nibName: String(describing: self), bundle: nil)
    }
}
