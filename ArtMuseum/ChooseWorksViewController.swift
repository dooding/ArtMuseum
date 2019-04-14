//
//  ChooseWorksViewController.swift
//  ArtMuseum
//
//  Created by SWUCOMPUTER on 09/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ChooseWorksViewController: UIViewController {    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

        // Do any additional setup after loading the view.
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let destVC = segue.destination as! ArtWorksViewController
            
            if segue.identifier == "ArtWork1Seg" {
                destVC.intArtworks = 1
                let destination = segue.destination
                destination.title = "고흐의 방"
            }
            else if segue.identifier == "ArtWork2Seg"{
                destVC.intArtworks = 2
                let destination = segue.destination
                destination.title = "별이 빛나는 밤"
            }
            else if segue.identifier == "ArtWork3Seg"{
                destVC.intArtworks = 3
                let destination = segue.destination
                destination.title = "아를의 별이 빛나는 밤"
            }
            else if segue.identifier == "ArtWork4Seg"{
                destVC.intArtworks = 4
                let destination = segue.destination
                destination.title = "정오의 휴식"
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
