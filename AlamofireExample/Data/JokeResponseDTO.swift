//
//  JokeResponseDTO.swift
//  AlamofireExample
//
//  Created by Jaewon on 2022/06/10.
//

import Foundation

struct JokeResponseDTO: Decodable {
    let status: String
    let joke: JokeDTO
    
    private enum CodingKeys: String, CodingKey {
        case status = "type"
        case joke = "value"
    }
}

extension JokeResponseDTO {
    struct JokeDTO: Decodable {
        let id: Int
        let content: String
        
        private enum CodingKeys: String, CodingKey {
            case id
            case content = "joke"
        }
    }
}
