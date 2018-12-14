//
//  HabitDetailedViewController.swift
//  Habitual
//
//  Created by Ricardo Rodriguez on 12/9/18.
//  Copyright © 2018 Ricardo Rodriguez. All rights reserved.
//

import UIKit

class HabitDetailedViewController: UIViewController {

    // MARK: - VARS
    
    var habit: Habit!
    var habitIndex: Int!
    
    //We need this one here too!
    private var persistance = PersistenceLayer()
    
    // MARK: - IBACTIONS and IBOUTLETS
    
    @IBOutlet weak var imageViewIcon: UIImageView!
    @IBOutlet weak var labelCurrentStreak: UILabel!
    @IBOutlet weak var labelTotalCompletions: UILabel!
    @IBOutlet weak var labelBestStreak: UILabel!
    @IBOutlet weak var labelStartingDate: UILabel!
    @IBOutlet weak var buttonAction: UIButton!
    
    @IBAction func pressActionButton(_ sender: Any) {
        habit = persistance.markHabitAsCompleted(habitIndex)
        updateUI()
    }
    
    // MARK: - LIFE CYCLE
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateUI()
        
    }
    
    private func updateUI() {
        // Group 1
        title = habit.title
        imageViewIcon.image = habit.selectedImage.image
        labelCurrentStreak.text = "\(habit.currentStreak) days"
        labelTotalCompletions.text = String(habit.numberOfCompletions)
        labelBestStreak.text = String(habit.bestStreak)
        labelStartingDate.text = habit.dateCreated.stringValue
        
        // Group 2
        if habit.hasCompletedForToday {
            buttonAction.setTitle("Completed for Today!", for: .normal)
        } else {
            buttonAction.setTitle("Mark as Completed", for: .normal)
        }
    }

}
