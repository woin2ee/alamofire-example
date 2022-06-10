//
//  ViewController.swift
//  AlamofireExample
//
//  Created by Jaewon on 2022/06/09.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    @IBOutlet weak var lblJoke: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func updateJoke(_ sender: UIButton) {
        AF.request("http://api.icndb.com/jokes/random").responseDecodable(of: JokeResponseDTO.self) { response in
//            self.printToConsole(response)
            
            self.lblJoke.text = response.value?.joke.content
        }
    }
    
    func printToConsole<T>(_ response: DataResponse<T, AFError>) {
        print("response : \(response)")
        print("response.data : \(String(describing: response.data))")
        print("response.result : \(response.result)")
        print("response.request : \(String(describing: response.request))")
        print("response.response : \(String(describing: response.response))")
        print("response.description : \(response.description)")
        print("response.value : \(String(describing: response.value))")
    }
}
