//
//  DropDownCell.swift
//  testCart
//
//  Created by intelmac on 16/02/21.
//

import UIKit
protocol CustomCellUpdater: class { // the name of the protocol you can put any
    func updateTableView()
}
class DropDownCell: UITableViewCell {

    @IBOutlet weak var cellHight: NSLayoutConstraint!
    @IBOutlet weak var goldenView: UIView!
    
    var viewOut = false
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    weak var delegate: CustomCellUpdater?

    func yourFunctionWhichDoesNotHaveASender () {
        delegate?.updateTableView()
    }
    
    @IBAction func viewAll(_ sender: Any) {
        
       
        
        if self.viewOut == false {
            self.cellHight.constant = 210
            self.viewOut = true
            self.delegate?.updateTableView()
            
        }
        else{
            self.cellHight.constant = 100
            self.viewOut = false
            self.delegate?.updateTableView()
        }
        
        
        UIView.transition(with: goldenView,
                         duration: 0.5,
                         options: [.curveEaseInOut],
                         animations: {
                                 
               },completion: nil)
    }
    
}
