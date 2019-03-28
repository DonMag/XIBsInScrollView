//
//  ScrollXIBsViewController.swift
//  XC10SWScratch
//
//  Created by Don Mag on 3/28/19.
//  Copyright © 2019 DonMag. All rights reserved.
//

import UIKit

class SimpleVC0: UIViewController {
	
}

class SimpleVC1: UIViewController {
	
}

class ViewController: UIViewController {

	@IBOutlet var theStackView: UIStackView!
	
	var simpleViewX: UIView!
	var simpleViewY: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

		// load "X", add it to the stack view
		// and keep a reference to it
		if let v = SimpleVC0().view {
			theStackView.addArrangedSubview(v)
			simpleViewX = v
		}
		
		// load "Y", add it to the stack view
		// and keep a reference to it
		if let v = SimpleVC1().view {
			theStackView.addArrangedSubview(v)
			simpleViewY = v
		}
		
		// start with "X" showing
		simpleViewY.isHidden = true
		
    }
	
	@IBAction func tabselected(_ sender: Any) {
		switch (sender as AnyObject).selectedSegmentIndex {
		case 0:
			simpleViewY.isHidden = true
			simpleViewX.isHidden = false
			
			break
		case 1:
			simpleViewX.isHidden = true
			simpleViewY.isHidden = false
			
			break
		case 2:
			//calledvideo in array is the value of the counter.
			//calledVideo = vids[counter]
			//geturl()
			break
		default:
			break
		}
	}
    
}
