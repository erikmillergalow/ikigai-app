//
//  ViewController.swift
//  ikigai-app
//
//  Created by Erik J Miller-Galow on 7/20/19.
//  Copyright © 2019 Erik Jurgen Miller-Galow. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    //MARK: Properties
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var ikigaiDiagram: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 4.0
        
    }

    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return ikigaiDiagram
    }
    
    //MARK: Actions
    
    
}

