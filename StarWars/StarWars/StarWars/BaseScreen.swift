//
//  ViewController.swift
//  StarWars
//
//  Created by admin on 2.12.2020.
//  Copyright © 2020 esaygiver. All rights reserved.
//

import UIKit

class BaseScreen: UIViewController {
    
    @IBOutlet var mainImageView: UIImageView!
    @IBOutlet var textLabel: UILabel!
    @IBOutlet var chooseSideButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chooseSideButton.layer.cornerRadius = chooseSideButton.frame.size.height / 2
    }

    @IBAction func chooseButtonTapped(_ sender: UIButton) {
        
        //this is used for connect the view controllers
        
        let selectionVC = storyboard?.instantiateViewController(identifier: "SelectionScreen") as! SelectionScreen
       // after boss screen you gotta come first, and swift want to makin an extension as methods for delegate,  you need to subclass your intern screen to your protocol!!
        selectionVC.selectionDelegate = self
        present(selectionVC, animated: true, completion: nil)
    }
}
//MARK: - SideSelectionDelegate

extension BaseScreen: SideSelectionDelegate {
    
    func tapDidChoice(name: String, image: UIImage, color: UIColor) {
        mainImageView.image = image
        textLabel.text = name
        view.backgroundColor = color
    }
    
}
