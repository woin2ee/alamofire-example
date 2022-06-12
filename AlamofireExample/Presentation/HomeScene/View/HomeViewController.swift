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
        bind(to: viewModel)
    }
    
    private func bind(to viewModel: HomeViewModel) {
        viewModel.content.bind { self.updateLblJoke($0) }
    }
    
    private func updateLblJoke(_ content: String) {
        self.lblJoke.text = content
    }
    
    @IBAction func randomJokeButtonClicked(_ sender: UIButton) {
        viewModel.didUpdateContent()
    }
}
