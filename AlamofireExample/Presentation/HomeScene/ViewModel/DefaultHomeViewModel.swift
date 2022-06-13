//
//  DefaultHomeViewModel.swift
//  AlamofireExample
//
//  Created by Jaewon on 2022/06/12.
//

import Foundation

protocol HomeViewModelInput {
    func didUpdateContent()
}

protocol HomeViewModelOutput {
    var content: Observable<String> { get }
}

protocol HomeViewModel: HomeViewModelInput, HomeViewModelOutput {}

final class DefaultHomeViewModel: HomeViewModel {
    
    private let jokeRepository: JokeRepository
    
    init(jokeRepository: JokeRepository) {
        self.jokeRepository = jokeRepository
    }
    
    // MARK: - Output
    
    var content: Observable<String> = Observable("")
    
    // MARK: - Input
    
    func didUpdateContent() {
        jokeRepository.fetchRandomJoke { response in
            self.content.value = response?.joke.content ?? ""
        }
    }
}
