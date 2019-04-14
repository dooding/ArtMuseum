//
//  ArtPickerViewController.swift
//  ArtMuseum
//
//  Created by SWUCOMPUTER on 09/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ArtPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var pickerArt: UIPickerView!
    let artArray:Array<String> = ["고흐의 방", "별이 빛나는 밤", "아를의 별이 빛나는 밤", "정오의 휴식"]
    var art:Int?
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func getValue() {
        art = self.pickerArt.selectedRow(inComponent: 0)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ArtWorksViewController
        //showviewcontroller에 있는 정수형 변수에 여기 인덱스 값을 넣어주고 싶다.
        let choice:String = artArray[art!]
        destVC.stringArt = choice
        
        if art == 0 {
            let destination = segue.destination
            destination.title = "고흐의 방"
        }
        else if art == 1{
            let destination = segue.destination
            destination.title = "별이 빛나는 밤"
        }
        else if art == 2{
            let destination = segue.destination
            destination.title = "아를의 별이 빛나는 밤"
        }
        else if art == 3{
            let destination = segue.destination
            destination.title = "정오의 휴식"
        }
        
        //버튼을 누르면 그 값이 다른 뷰 컨트롤러에 전달됨.
        }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return artArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return artArray[row]
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
