//
//  ExamplePullUpController.swift
//  PullUpControllerBugExample
//
//  Created by Vlad Krupenko on 14.10.2018.
//  Copyright © 2018 Vlad Krupenko. All rights reserved.
//

import UIKit
import PullUpController

final class ExamplePullUpController: PullUpController {

    // MARK: - IBOutlets

    @IBOutlet private weak var firstPreviewContentView: UIView!
    @IBOutlet private weak var secondPreviewContentView: UIView!

    // MARK: - Private Propreties

    private var portraitSize: CGSize = .zero

    // MARK: - PullUpController

    override var pullUpControllerPreferredSize: CGSize {
        return portraitSize
    }

    override var pullUpControllerMiddleStickyPoints: [CGFloat] {
        return [firstPreviewContentView.frame.height]
    }

    override var pullUpControllerIsBouncingEnabled: Bool {
        return false
    }

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        portraitSize = CGSize(width: min(UIScreen.main.bounds.width, UIScreen.main.bounds.height),
                              height: secondPreviewContentView.frame.maxY)
    }

}
