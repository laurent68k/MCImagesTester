//
//  SecondViewController.swift
//  MCImagesTester
//
//  Created by Laurent on 20/02/2017.
//  Copyright © 2017 Laurent68k. All rights reserved.
//

import UIKit

class NightViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var pickerWheelView: UIPickerView!
    @IBOutlet weak var trendImageView: UIImageView!
    
    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.localInit()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func localInit() {
        
        self.backgroundImageView.image = UIImage(named:"BackgroundStars.png")
        self.backgroundImageView.contentMode = .scaleAspectFill
        
        self.pickerWheelView.delegate = self
        self.pickerWheelView.dataSource = self
        
        self.pickerData = ImagesManager.listNight
        
        self.trendImageView.image = UIImage(named: self.pickerData[0])
    }
    
    //  UIPIckerView delegate implementation
    
    //  The numberOfComponentsInPickerView method asks for the number of columns in your picker element. For example, if you wanted to do a picker for
    //  selecting time, you might have 3 components; one for each of hour, minutes and seconds.
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    //  The numberOfRowsInComponent method asks for the number of rows of data in your UIPickerView element so we return the array count.
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return pickerData.count
    }
    
    //  The pickerView:titleForRow:forComponent: method asks for the data for a specific row and specific component.
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        var pickerLabel = view as? UILabel
        
        if pickerLabel == nil {
            
            pickerLabel = UILabel()
            
            pickerLabel?.font = UIFont(name: "Montserrat", size: 16)
            pickerLabel?.textColor = .white
            pickerLabel?.textAlignment = NSTextAlignment.center
        }
        
        pickerLabel?.text = pickerData[row]
        
        return pickerLabel!
    }
    
    
    // Catpure the picker view selection
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // This method is triggered whenever the user makes a change to the picker selection.
        // The parameter named row and component represents what was selected.
        
        self.trendImageView.image = UIImage(named: self.pickerData[row])
        
        if self.trendImageView.image == nil {
            
            self.trendImageView.image = UIImage(named: "QuestionMark.png")
        }

    }
}

