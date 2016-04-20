//
//  ViewController.swift
//  CouchbaseLiteSwiftExample
//
//  Created by Marco Betschart on 19.04.16.
//  Copyright © 2016 MANDELKIND. All rights reserved.
//

import UIKit
import CouchbaseLiteSwift


class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		let allPeople = CLSQuery<Person>()
		let adultPeople = CLSQuery<Person>().conditions("age > 18")
		
		print("\(adultPeople.count) of \(allPeople.count) people are older than 18:")
		for person in adultPeople{
			print(person.givenName!,person.familyName!)
		}
	}
}