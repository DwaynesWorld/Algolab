//
//  MoyaHelpers.swift
//  Algolab
//
//  Created by Kyle Thompson on 6/21/20.
//  Copyright © 2020 Kyle Thompson. All rights reserved.
//

import Foundation


func stubbedResponse(_ filename: String) -> Data! {
  @objc class TestClass: NSObject { }
  
  let bundle = Bundle(for: TestClass.self)
  let path = bundle.path(forResource: filename, ofType: "json")
  return (try? Data(contentsOf: URL(fileURLWithPath: path!)))
}
