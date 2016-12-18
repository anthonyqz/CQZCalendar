//
//  CQZCalendarMainViewController.swift
//  CQZCalendar
//
//  Created by Christian Quicano on 8/30/16.
//  Copyright © 2016 ca9z. All rights reserved.
//

import UIKit
import FSCalendar

public class CQZCalendarMainViewController: UIViewController {

    //MARK: - private properties
    @IBOutlet private weak var calendar: FSCalendar!
    @IBOutlet private weak var calendarHeightConstraint: NSLayoutConstraint!
    
    //MARK: - init
    convenience init(){
        self.init(nibName: "CQZCalendarMainViewController", bundle: nil)
        
    }
    
    //MARK: - override
    override public func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeMode(sender: AnyObject) {
//        calendar.scope = .Week
    }
    
    //MARK: - Privates methods
}

//MARK: - FSCalendarDelegate, FSCalendarDataSource
extension CQZCalendarMainViewController:FSCalendarDelegate, FSCalendarDataSource {
    
    //for autolayout
    public func calendar(calendar: FSCalendar, boundingRectWillChange bounds: CGRect, animated: Bool) {
        calendarHeightConstraint.constant = CGRectGetHeight(bounds)
        view.layoutIfNeeded()
    }
    
}