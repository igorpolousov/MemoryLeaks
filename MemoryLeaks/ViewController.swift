//
//  ViewController.swift
//  MemoryLeaks
//
//  Created by Igor Polousov on 14.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var myLabel: UILabel!
    
    func doAnimation(showLabel: Bool) {
        let text = "Some text"
        
        // Чтобы избежать сильных ссылок на объекты из вне создаётся список переменных и присвается им свойства weak или unowned
        UIView.animate(withDuration: 0.3) {[weak self] in
            if showLabel {
                self?.myLabel.alpha = 1
            } else {
                self?.myLabel.alpha = 0
            }
            self?.myLabel.text = text
        }
    }
}

