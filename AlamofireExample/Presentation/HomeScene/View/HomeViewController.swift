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
        lblJoke.text = viewModel.earlyContent
    }
    
    @IBAction func randomJokeButtonClicked(_ sender: UIButton) {
        viewModel.didUpdateContent()
        lblJoke.text = viewModel.content
    }
}
