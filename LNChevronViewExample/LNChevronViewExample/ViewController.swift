//
//  ViewController.swift
//  LNChevronViewExample
//
//  Created by Leo Natan on 16/9/16.
//  Copyright © 2016 Leo Natan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var chevronView: LNChevronView!
	@IBOutlet var chevronViews: [LNChevronView]!
	

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func _toggleButtonTapped(_ sender: UIButton) {
		var nextState = LNChevronViewState(rawValue: chevronView.state.rawValue + 1)!
		if nextState.rawValue > 1 {
			nextState = .up
		}
		chevronViews.forEach { $0.setState(nextState, animated: true) }
	}
	
}

