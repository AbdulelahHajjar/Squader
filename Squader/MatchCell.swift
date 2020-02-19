//
//  MatchCell.swift
//  Squader
//
//  Created by Abdulelah Hajjar on 13/02/2020.
//  Copyright © 2020 Abdulelah Hajjar. All rights reserved.
//

import UIKit
import MBCircularProgressBar

class MatchCell: UITableViewCell {
    
    //@IBOutlet weak var cellBack: UIView!
    
//    @IBOutlet weak var cellBack: UIButton!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var progressView: MBCircularProgressBarView!
    
    @IBAction func join(_ sender: Any) {
        
    }
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//
//        cellBack.layer.cornerRadius = 10
//        cellBack.layer.masksToBounds = false
//
//        cellBack.layer.shadowColor = UIColor.black.cgColor
//        cellBack.layer.shadowOpacity = 0.5
//        cellBack.layer.shadowOffset = .zero
//        cellBack.layer.shadowRadius = 3
//
//    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//        // Configure the view for the selected state
//    }
    
    func full(){
        if self.progressView.value == 90 {
            self.progressView.progressColor = UIColor.red
            self.progressView.progressStrokeColor = UIColor.red
            self.progressView.fontColor = UIColor.red
            button.isUserInteractionEnabled = false
        }
    }
    @IBAction func pressed(_ sender: UIButton) {
        full()
        UIView.animate(withDuration: 1.0){
            self.progressView.value = self.progressView.value + 10
            
        }
    }
}
