//
//  buttonAnimation_VC.swift
//  testCart
//
//  Created by intelmac on 25/03/21.
//

import UIKit
import TransitionButton
class buttonAnimation_VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func actBtn(_ button: TransitionButton) {
        button.startAnimation() // 2: Then start the animation when the user tap the button
        let qualityOfServiceClass = DispatchQoS.QoSClass.background
        let backgroundQueue = DispatchQueue.global(qos: qualityOfServiceClass)
        backgroundQueue.async(execute: {

            sleep(UInt32(1)) // 3: Do your networking task or background work here.

            DispatchQueue.main.async(execute: { () -> Void in
                // 4: Stop the animation, here you have three options for the `animationStyle` property:
                // .expand: useful when the task has been compeletd successfully and you want to expand the button and transit to another view controller in the completion callback
                // .shake: when you want to reflect to the user that the task did not complete successfly
                // .normal
                button.stopAnimation(animationStyle: .expand, completion: {
                    
                    let secondViewController = self.storyboard!.instantiateViewController(withIdentifier: "ImagePicker_VC") as! ImagePicker_VC
                    self.navigationController?.pushViewController(secondViewController, animated: false)
                })
            })
        })
    }
    }



