//
//  HomeViewController.swift
//  AlamofireExample
//
//  Created by Jaewon on 2022/06/09.
//

import UIKit

final class HomeViewController: UIViewController {
    @IBOutlet private weak var lblJoke: UILabel!
    
    private let viewModel = DefaultHomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.content.bind {
            self.lblJoke.text = $0
        }
    }
    
    @IBAction func randomJokeButtonClicked(_ sender: UIButton) {
        viewModel.didUpdateContent()
    }
}
