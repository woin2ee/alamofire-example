//
//  DefaultJokeRepository.swift
//  AlamofireExample
//
//  Created by Jaewon on 2022/06/12.
//

import Foundation
import Alamofire

final class DefaultJokeRepository: JokeRepository {
    private let defaultURL = "http://api.icndb.com/"
    
    func fetchRandomJoke(_ completion: @escaping (JokeResponseDTO?) -> Void) {
        let randomSource = "jokes/random"
        let requestURL = defaultURL + randomSource
        AF.request(requestURL)
            .validate()
            .responseDecodable(of: JokeResponseDTO.self) { response in
                completion(response.value)
            }
    }
}
