//
//  AppDelegate.swift
//  CouchbaseLiteSwiftExample
//
//  Created by Marco Betschart on 19.04.16.
//  Copyright © 2016 MANDELKIND. All rights reserved.
//

import UIKit
import CouchbaseLiteSwift


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
	var window: UIWindow?

	
	func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool{
		
//		CLSDatabase.defaultConfiguration = {
//			let configuration = CLSDatabase.defaultConfiguration
//			
//			configuration.databaseSetup = { (database: CLSDatabase) throws in
//				if CLSQuery<CLSModel>(database: database).isEmpty {
//					try Person.create(database,from: [
//						"givenName": "Bibi",
//						"familyName": "Blocksberg",
//						"age": 14
//						]).save()
//				}
//			}
//			
//			return configuration
//			}()
		
		let database = CLSDatabase.defaultDatabase()
		
		do{
			try Person.create(database,from: [
				"givenName": "Bibi",
				"familyName": "Blocksberg",
				"age": 14
				]).save()
			
			print(CLSQuery<CLSModel>(database: database).count)
			
		} catch let error as NSError{
			print(error)
		}
		
		return true
	}
}