//
//  ViewController.swift
//  testCart
//
//  Created by intelmac on 25/01/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var Feild: UITextField!
    @IBOutlet weak var Feild1: UITextField!
    @IBOutlet weak var Feild2: UITextField!
    @IBOutlet weak var Feild3: UITextField!
    @IBOutlet weak var Feild4: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        Feild1.delegate = self
        Feild2.delegate = self
        Feild3.delegate = self
        Feild4.delegate = self
        
        Feild1.addTarget(self,action: #selector(self.textFieldDidChange(textField:)), for:UIControl.Event.editingChanged)
        Feild2.addTarget(self,action: #selector(self.textFieldDidChange(textField:)), for:UIControl.Event.editingChanged)
        Feild3.addTarget(self,action: #selector(self.textFieldDidChange(textField:)), for:UIControl.Event.editingChanged)
        Feild4.addTarget(self,action: #selector(self.textFieldDidChange(textField:)), for:UIControl.Event.editingChanged)
 }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        Feild1.becomeFirstResponder()
    }
    
    @objc func textFieldDidChange(textField: UITextField) {
        let text = textField.text
        let f1Val = Feild1.text!
        let f2Val = Feild2.text!
        let f3Val = Feild3.text!
        let f4Val = Feild4.text!
        let otp = "\(f1Val)\(f2Val)\(f3Val)\(f4Val)"
            print(otp)
        if text?.utf16.count == 1 {
            switch textField {
            case Feild1:
                Feild2.becomeFirstResponder()
            case Feild2:
                Feild3.becomeFirstResponder()
            case Feild3:
                Feild4.becomeFirstResponder()
            case Feild4:
                Feild4.becomeFirstResponder()
            default:
                break
            }
            
        }
        else{
            
        }
    }

}




//    func textFieldDidChange(textField: UITextField){
//        let text = textField.text
//
//        if (text?.utf16.count)! >= 1{
//            switch textField{
//            case Feild1:
//                Feild2.becomeFirstResponder()
//            case Feild2:
//                Feild3.becomeFirstResponder()
//            case Feild3:
//                Feild4.becomeFirstResponder()
//            case Feild4:
//                Feild4.resignFirstResponder()
//            default:
//                break
//            }
//        }else{
//
//        }
//    }
//
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        if textField.text!.count < 1 && string.count > 0 {
//            let tag = textField.tag + 1;
//            let nextResponder = textField.superview?.viewWithTag(tag)
//
//            if   (nextResponder != nil){
//                textField.resignFirstResponder()
//
//            }
//            textField.text = string;
//            if (nextResponder != nil){
//                nextResponder?.becomeFirstResponder()
//
//            }
//            return false;
//
//
//        }else if (textField.text?.count)! >= 1 && string.count == 0 {
//            let prevTag = textField.tag - 1
//            let prevResponser = textField.superview?.viewWithTag(prevTag)
//              if (prevResponser != nil){
//                textField.resignFirstResponder()
//            }
//            textField.text = string
//            if (prevResponser != nil){
//                prevResponser?.becomeFirstResponder()
//
//            }
//             return false
//        }
//        let maxLength = 1
//              let currentString: NSString = (textField.text ?? "") as NSString
//              let newString: NSString =
//                  currentString.replacingCharacters(in: range, with: string) as NSString
//              return newString.length <= maxLength
//
//
//    }
//
//    @objc func textFieldDidChange() {
//        print(Feild1.text)
//    }
