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

class Job {
    var person: Person?
    
    deinit {
        print("Job deallocated")
    }
}

class Person {
    var job: Job?
    deinit {
        print("Person deallocated")
    }
}
