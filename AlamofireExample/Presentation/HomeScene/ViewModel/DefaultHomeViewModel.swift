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
    
    private let repository = JokeRepository()
    
    // MARK: - Input
    
    func didUpdateContent() {
        repository.fetchRandomJoke { response in
            self.content.value = response?.joke.content ?? ""
        }
    }
    
    // MARK: - Output
    
    var content: Observable<String> = Observable("")
}
