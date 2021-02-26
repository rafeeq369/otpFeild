//
//  ImagePicker_VC.swift
//  testCart
//
//  Created by intelmac on 18/02/21.
//

import UIKit

class ImagePicker_VC: UIViewController,UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    @IBAction func EditImg(_ sender: Any) {
        let imgController = UIImagePickerController()
        imgController.delegate = self
        imgController.sourceType = UIImagePickerController.SourceType.photoLibrary
        self.present(imgController, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imgView.image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        self.dismiss(animated: true, completion: nil)
    }
    
}
