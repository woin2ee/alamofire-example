//
//  Observable.swift
//  AlamofireExample
//
//  Created by Jaewon on 2022/06/13.
//

import Foundation

class Observable {
    // 값이 바뀔때마다 실행될 클로저
    var listener: ((String) -> Void)?
    
    // raw 값
    var value: String {
        didSet {
            listener?(value)
        }
    }
    
    // Observing 을 위한 값 초기화
    init(value: String) {
        self.value = value
    }
    
    // 클로저를 binding
    func bind(_ closure: @escaping (String) -> Void) {
        listener = closure
    }
}
