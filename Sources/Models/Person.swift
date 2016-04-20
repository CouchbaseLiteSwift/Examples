//
//  Person.swift
//  CouchbaseLiteSwiftExample
//
//  Created by Marco Betschart on 19.04.16.
//  Copyright © 2016 MANDELKIND. All rights reserved.
//

import Foundation
import CouchbaseLiteSwift


@objc(Person)
class Person: CLSModel{
	@NSManaged var givenName: NSString?
	@NSManaged var familyName: NSString?
	@NSManaged var age: NSNumber?
}