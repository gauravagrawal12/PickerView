//
//  ViewController.swift
//  IOSDAY17PickerView
//
//  Created by Felix 09 on 30/08/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    var colors = ["red","blue","yellow","green","orange"]
    var selected = 0
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let title = colors[row]
        return title
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       /* UILabel*labelSelected = (UILabel*)[pickerView viewForRow:row forComponent:componenet]
        [labelSelected setTextColor:[UIColor: redColor]]*/
        
        selected = row
        if selected == 0{
        view.backgroundColor = .red
        
        }
        if selected == 1
        {
            view.backgroundColor = .blue
        }
        if selected == 2
        {
            view.backgroundColor = .yellow
            
        }
        if selected == 3
        {
            view.backgroundColor = .green
        }
        if selected == 4
        {
            view.backgroundColor = .orange
        }
        
}

    
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func datePickerChanged(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.short
         dateFormatter.timeStyle = DateFormatter.Style.short
       let strDate = dateFormatter.string(from: datePicker.date)
        dateLabel.text = strDate
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

