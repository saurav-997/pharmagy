//
//  TaskViewControllers.swift
//  pharmagy
//
//  Created by Saurav Sharma on 05/09/21.
//

import Foundation

import UIKit

class TaskViewController: UIViewController {
    
    @IBOutlet weak var uipickerView: UIPickerView!
    @IBOutlet weak var taskView: UIView!
    
    let dateArr = ["Today", "Tomorrow"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uipickerView.delegate = self
        uipickerView.dataSource = self
    }
    
}
extension TaskViewController: UIPickerViewDataSource, UIPickerViewDelegate{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dateArr.count
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString?
    {
        return NSAttributedString(string: dateArr[row],attributes: [NSAttributedString.Key.foregroundColor: UIColor.white,])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            
    }
    
}
