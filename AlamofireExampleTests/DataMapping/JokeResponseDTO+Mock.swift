//
//  JokeResponseDTO+Mock.swift
//  AlamofireExampleTests
//
//  Created by Jaewon on 2022/06/13.
//

import Foundation
@testable import AlamofireExample

extension JokeResponseDTO {
    static func mock() -> JokeResponseDTO {
        .init(status: "success", joke: .mock())
    }
}

extension JokeResponseDTO.JokeDTO {
    static func mock() -> JokeResponseDTO.JokeDTO {
        .init(id: 1, content: "Mock-Content")
    }
}
