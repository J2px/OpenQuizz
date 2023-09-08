//
//  QuestionView.swift
//  OpenQuizz
//
//  Created by Jimmy JERMIDI on 28/08/2023.
//

import UIKit

class QuestionView: UIView {
    
    @IBOutlet private var label: UILabel!
    @IBOutlet private var icon: UIImageView!
    
    enum Style {
        case correct, incorrect, standard
    }
    
    var style: Style = .standard {
        didSet {
            setStyle(style)
        }
    }
    
    private func setStyle(_ style: Style){
        switch style{
        case .correct:
            backgroundColor = UIColor(red: 200/255.0, green: 236/255, blue: 160/255.0, alpha: 1)
            icon.image = UIImage(named: "Icon Correct")
            icon.isHidden = false
        case .incorrect:
            backgroundColor = #colorLiteral(red: 0.9515746236, green: 0.5276113749, blue: 0.5785452724, alpha: 1)
            //backgroundColor = UIColor(red: 243.0/255.0, green: 135.0/255, blue: 148.0/255.0, alpha: 1)
            icon.isHidden = false
            icon.image = #imageLiteral(resourceName: "Icon Error")
        case .standard:
            backgroundColor = #colorLiteral(red: 0.7486088872, green: 0.7691654563, blue: 0.7860452533, alpha: 1)
            //backgroundColor = UIColor(red: 191.0/255.0, green: 196.0/255, blue: 201.0/255.0, alpha: 1)
            icon.isHidden = true
        }
    }
    
    var title = "" {
        didSet{
            label.text = title
        }
    }
    
    
    
}
