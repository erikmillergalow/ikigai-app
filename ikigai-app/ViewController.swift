//
//  ViewController.swift
//  ikigai-app
//
//  Created by Erik J Miller-Galow on 7/20/19.
//  Copyright © 2019 Erik Jurgen Miller-Galow. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var ikigaiDiagram: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set min/max zoom levels
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 4.0
     
        //set text view outline
        textView.layer.borderColor = UIColor.lightGray.cgColor
        textView.layer.borderWidth = 1
        
        // set the date
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .none
        dateFormatter.dateStyle = .medium
        
        let dateString = dateFormatter.string(from: Date() as Date)
        
        dateLabel.text = String(dateString)
    }

    // allow zooming in on diagram
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return ikigaiDiagram
    }
    
}

