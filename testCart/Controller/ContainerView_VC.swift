//
//  ContainerView_VC.swift
//  testCart
//
//  Created by intelmac on 28/02/21.
//

import UIKit

class ContainerView_VC: UIViewController {

    @IBOutlet weak var firstContainer: UIView!
    @IBOutlet weak var secndContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }
    
    @IBAction func showContainer(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0){
            UIView.animate(withDuration: 0.5, animations: {
                self.firstContainer.alpha = 0.0
                self.secndContainer.alpha = 1.0
            })
        }
        else{
            UIView.animate(withDuration: 0.5, animations: {
                self.firstContainer.alpha = 1.0
                self.secndContainer.alpha = 0.0
            })
        }
    }
    
   

}
