//
//  ViewController.swift
//  MemoryLeaks
//
//  Created by Igor Polousov on 14.03.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var joe: Person? = Person()
        var dev: Job? = Job()
        
        joe?.job = dev
        dev?.person = joe
        
        joe = nil
        dev = nil
        
    }
}
// Child class
class Job {
    weak var person: Person?
    
    deinit {
        print("Job deallocated")
    }
}
// Parent class
class Person {
    var job: Job?
    deinit {
        print("Person deallocated")
    }
}
