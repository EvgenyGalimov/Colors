//
//  StartViewController.swift
//  Colors
//
//  Created by user on 05/06/2021.
//

import UIKit

class StartViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? ViewController else { return }
        settingsVC.delegate = self
        settingsVC.initialColor = view.backgroundColor
    }
}

extension StartViewController: ColorDelegate {
    func setColor(_ color: UIColor?) {
        self.view.backgroundColor = color
        
        
        
    }
}

