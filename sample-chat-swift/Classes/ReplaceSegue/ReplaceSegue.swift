//
//  ReplaceSegue.swift
//  sample-chat-swift
//
//  Created by Anton Sokolchenko on 3/18/16.
//  Copyright © 2016 quickblox. All rights reserved.
//

import Foundation

class ReplaceSegue : UIStoryboardSegue {
	
	override func perform() {
		let sourceViewController = self.sourceViewController
		let destinationViewController = self.destinationViewController
		
		let navigationController = sourceViewController.navigationController
		
		navigationController?.pushViewController(destinationViewController, animated: false)
        
		guard var mutableVC = navigationController?.viewControllers else {
			print("Error: no view controllers")
			return
		}
		
		guard let sourceViewControllerIndex = mutableVC.indexOf(sourceViewController) else {
			print("Error: no index for source view controller")
			return
		}

		mutableVC.removeAtIndex(sourceViewControllerIndex)
		
		navigationController?.setViewControllers(mutableVC, animated: true)
	}
	
}