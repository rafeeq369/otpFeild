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
        
        self.textFieldDidChange(textField: Feild1)
        self.textFieldDidChange(textField: Feild2)
        self.textFieldDidChange(textField: Feild3)
        self.textFieldDidChange(textField: Feild4)

 }
    func textFieldDidChange(textField: UITextField){

        textField.addTarget(self, action: #selector(textFieldDidChange(sender:)), for: .editingChanged)

        let text = textField.text

        if (text?.utf16.count)! >= 1{
            switch textField{
            case Feild1:
                Feild2.becomeFirstResponder()
            case Feild2:
                Feild3.becomeFirstResponder()
            case Feild3:
                Feild4.becomeFirstResponder()
            case Feild4:
                Feild4.resignFirstResponder()
            default:
                break
            }
        }else{

        }
        
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField.text!.count < 1 && string.count > 0 {
            let tag = textField.tag + 1;
            let nextResponder = textField.superview?.viewWithTag(tag)

            if   (nextResponder != nil){
                textField.resignFirstResponder()

            }
            textField.text = string;
            if (nextResponder != nil){
                nextResponder?.becomeFirstResponder()

            }
            return false;


        }else if (textField.text?.count)! >= 1 && string.count == 0 {
            let prevTag = textField.tag - 1
            let prevResponser = textField.superview?.viewWithTag(prevTag)
              if (prevResponser != nil){
                textField.resignFirstResponder()
            }
            textField.text = string
            if (prevResponser != nil){
                prevResponser?.becomeFirstResponder()

            }
             return false
        }
        let maxLength = 1
              let currentString: NSString = (textField.text ?? "") as NSString
              let newString: NSString =
                  currentString.replacingCharacters(in: range, with: string) as NSString
              return newString.length <= maxLength


    }
    
    @objc func textFieldDidChange(sender: UITextField) {
        print(sender.text)

    }
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        let maxLength = 1
//        let currentString: NSString = (textField.text ?? "") as NSString
//        let newString: NSString =
//            currentString.replacingCharacters(in: range, with: string) as NSString
//        return newString.length <= maxLength
//    }
}
