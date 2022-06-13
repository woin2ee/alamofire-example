//
//  StubJokeRepository.swift
//  AlamofireExampleTests
//
//  Created by Jaewon on 2022/06/13.
//

import Foundation
@testable import AlamofireExample

class StubJokeRepository: JokeRepository {
    func fetchRandomJoke(_ completion: @escaping (JokeResponseDTO?) -> Void) {
        completion(JokeResponseDTO.mock())
    }
}
