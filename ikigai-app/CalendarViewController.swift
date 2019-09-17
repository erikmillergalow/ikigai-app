//
//  CalendarViewController.swift
//  ikigai-app
//
//  Created by Erik J Miller-Galow on 8/25/19.
//  Copyright © 2019 Erik Jurgen Miller-Galow. All rights reserved.
//

import UIKit

class CalendarViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // send the selected date to the next screen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "calendarToDataEntry") {
            if let dataEntryView = segue.destination as? DataEntryViewController {
                
                // get date string from the datepicker
                let dateFormatter = DateFormatter()
                dateFormatter.timeStyle = .none
                dateFormatter.dateStyle = .medium
                let dateString = dateFormatter.string(from: self.datePicker.date)
                
                // send the date to the next view
                dataEntryView.dateString = dateString
            }
        }
    }

}
