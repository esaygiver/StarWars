//
//  SelectionScreen.swift
//  StarWars
//
//  Created by admin on 2.12.2020.
//  Copyright © 2020 esaygiver. All rights reserved.
//

import UIKit

// This is an order for the intern which is BaseScreen
protocol SideSelectionDelegate {
    func tapDidChoice(name: String, image: UIImage, color: UIColor)
}

class SelectionScreen: UIViewController {
    
    var selectionDelegate: SideSelectionDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func imperialButtonTapped(_ sender: UIButton) {
        
        selectionDelegate.tapDidChoice(name: "Darth Vader", image: UIImage(named: "vader")! , color: .red)
        
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func rebelButtonTapped(_ sender: UIButton) {
        
        selectionDelegate.tapDidChoice(name: "Luke Skywalker", image: UIImage(named: "luke")! , color: .cyan)
        
        dismiss(animated: true, completion: nil)
    }
}
