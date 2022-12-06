//
//  ViewController.swift
//  DetectOrientationOnLaunch
//
//  Created by Antoine Barrault on 23/05/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var orientationLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if traitCollection.verticalSizeClass == UIUserInterfaceSizeClass.compact {
            orientationLabel.text = "landscape"
        }
        
        if traitCollection.verticalSizeClass == .regular {
            orientationLabel.text = "portrait"
        }
        // Do any additional setup after loading the view.
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        if traitCollection.verticalSizeClass == UIUserInterfaceSizeClass.compact {
            orientationLabel.text = "landscape"
        }
        
        if traitCollection.verticalSizeClass == .regular {
            orientationLabel.text = "portrait"
        }

    }

}

