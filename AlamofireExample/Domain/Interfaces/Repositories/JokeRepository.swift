//
//  JokeRepository.swift
//  AlamofireExample
//
//  Created by Jaewon on 2022/06/13.
//

import Foundation

protocol JokeRepository {
    func fetchRandomJoke(_ completion: @escaping (JokeResponseDTO?) -> Void)
}
