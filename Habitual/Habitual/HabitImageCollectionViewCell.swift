//
//  HabitImageCollectionViewCell.swift
//  Habitual
//
//  Created by Ricardo Rodriguez on 12/7/18.
//  Copyright © 2018 Ricardo Rodriguez. All rights reserved.
//

import UIKit

class HabitImageCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var habitImage: UIImageView!
    
    static let identifier = "habit image cell"
    
    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    func setImage(image: UIImage){
        self.habitImage.image = image
    }


}
