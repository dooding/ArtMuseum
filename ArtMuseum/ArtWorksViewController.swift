//
//  ArtWorksViewController.swift
//  ArtMuseum
//
//  Created by SWUCOMPUTER on 09/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ArtWorksViewController: UIViewController {

    @IBOutlet var Art1subview: UIView!
    @IBOutlet var Art2subview: UIView!
    @IBOutlet var Art3subview: UIView!
    @IBOutlet var Art4subview: UIView!
    
    var intArtworks:Int?
    var stringArt:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Art1subview.isHidden = true
        Art2subview.isHidden = true
        Art3subview.isHidden = true
        Art4subview.isHidden = true
        

        // Do any additional setup after loading the view.
        if intArtworks == 1 || stringArt == "고흐의 방"{
            Art1subview.isHidden = false
        }
        else if intArtworks == 2 || stringArt == "별이 빛나는 밤"{
            Art2subview.isHidden = false
        }
        else if intArtworks == 3 || stringArt == "아를의 별이 빛나는 밤"{
            Art3subview.isHidden = false
        }
        else if intArtworks == 4 || stringArt == "정오의 휴식"{
            Art4subview.isHidden = false
        }
    }
 
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
