//
//  MainViewController.swift
//  PullUpControllerBugExample
//
//  Created by Vlad Krupenko on 14.10.2018.
//  Copyright © 2018 Vlad Krupenko. All rights reserved.
//

import UIKit

final class MainViewController: UIViewController {

    // MARK: - Private Properties

    private var pullUpController: ExamplePullUpController?

    // MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func showControllerDidPressed(_ sender: Any) {
        if pullUpController == nil {
            pullUpController = ExamplePullUpController()
            guard let pullUpController = pullUpController else { return }
            addPullUpController(pullUpController, initialStickyPointOffset: 100.0, animated: true)
        } else if let pullUpController = pullUpController {
            removePullUpController(pullUpController, animated: true)
            self.pullUpController = nil
        }
    }

}
