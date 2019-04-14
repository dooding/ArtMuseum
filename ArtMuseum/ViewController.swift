//
//  ViewController.swift
//  ArtMuseum
//
//  Created by SWUCOMPUTER on 09/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.mainImage.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi/2))
      
    }
    
    }



