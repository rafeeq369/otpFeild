//
//  DropdownFieldTest.swift
//  testCart
//
//  Created by intelmac on 16/02/21.
//

import UIKit

class DropdownFieldTest: UIViewController {
    
    var myItems = ["AMEX", "ANDHRA BANK", "AXIS BANK", "BANK OF BARODA", "BANK OF INDIA", "CITY BANK", "CORPRATION BANK", "HDFC BANK", "ICICI BANK", "IDBI BANK", "INDIAN OVERSEAS BANK", "INDUSIND BANK", "KOTAK MAHINDRA BANK", "RBL BANK", "STANDARD CHARTERED", "STATE BANK OF INDIA", "SYNTICATE BANK", "VIJAY BANK", "YES BANK" ]

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = "Select Bank"
        pickerView.isHidden = true
    }
}

extension DropdownFieldTest: UITextFieldDelegate {

    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        pickerView.isHidden = false
        return false
    }
}

// MARK: - UIPickerViewDelegate

extension DropdownFieldTest: UIPickerViewDelegate, UIPickerViewDataSource {

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myItems.count
    }

    func pickerView( _ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return myItems[row]
    }

    func pickerView( _ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textField.text = myItems[row]
        pickerView.isHidden = true
    }
}
