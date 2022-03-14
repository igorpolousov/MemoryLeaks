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
        var job: Job? = Job()
        
        joe?.job = job
        job?.person = joe
        
        joe = nil
        job = nil
        
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
