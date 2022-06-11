//
//  HomeViewController.swift
//  AlamofireExample
//
//  Created by Jaewon on 2022/06/09.
//

import UIKit
import Alamofire

class HomeViewController: UIViewController {
    @IBOutlet weak var lblJoke: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func updateJoke(_ sender: UIButton) {
        AF.request("http://api.icndb.com/jokes/random")
            .validate()
            .responseDecodable(of: JokeResponseDTO.self) { response in
                self.lblJoke.text = response.value?.joke.content
            }
    }
}
