//
//  ViewController.swift
//  Gradient
//
//  Created by Zhanerke Ussen on 04/07/2023.
//

import UIKit

class ViewController: UIViewController {
    private lazy var maxWidth: CGFloat = {
        return self.view.frame.width
    }()
    private lazy var y: CGFloat = {
        return self.view.frame.height
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drawGradient()
    }
    
    private func drawGradient() {
        var widthCount = 0.0
        while widthCount < maxWidth {
            let gradView = UIView(frame: CGRect(x: widthCount, y: 0, width: 1.0, height: y))
            gradView.backgroundColor = UIColor(white: widthCount / maxWidth, alpha: 1)
            view.addSubview(gradView)
            widthCount += 1
        }
    }
}

