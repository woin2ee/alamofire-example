//
//  HomeViewModelTests.swift
//  AlamofireExampleTests
//
//  Created by Jaewon on 2022/06/13.
//

import XCTest
@testable import AlamofireExample

class HomeViewModelTests: XCTestCase {

    var stubJokeRepository: StubJokeRepository!
    
    override func setUpWithError() throws {
        stubJokeRepository = StubJokeRepository()
    }

    override func tearDownWithError() throws {
    }

    func testExample() throws {
        stubJokeRepository.fetchRandomJoke {
            XCTAssertEqual($0?.joke.content, "Mock-Content")
        }
    }
}
