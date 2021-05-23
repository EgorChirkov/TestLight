//
//  ViewController.swift
//  TestLight
//
//  Created by Mac mini on 18.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewRed: UIView!
    @IBOutlet weak var viewYellow: UIView!
    @IBOutlet weak var viewGreen: UIView!
    @IBOutlet weak var btnStart: UIButton!
    @IBOutlet weak var stackView: UIStackView!
    
    private var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView(){
        viewRed.setRadius()
        viewYellow.setRadius()
        viewGreen.setRadius()
        
    }
    
    
    @IBAction func actionNext(_ sender: Any) {
        
        btnStart.setTitle("NEXT", for: .normal)
        
        switch counter {
        case 0:
            viewRed.alpha = 1
            viewYellow.alpha = 0.5
            viewGreen.alpha = 0.5
        case 1:
            viewRed.alpha = 0.5
            viewYellow.alpha = 1
            viewGreen.alpha = 0.5
        case 2:
            viewRed.alpha = 0.5
            viewYellow.alpha = 0.5
            viewGreen.alpha = 1
        default:
            return
        }
        
        counter+=1
        
        guard counter != 3 else {
            counter = 0
            return
        }
        
    }
    
    
    
}

extension UIView {
    func setRadius() {
        self.layer.cornerRadius = 50
        self.layer.masksToBounds = true
    }
    
}

