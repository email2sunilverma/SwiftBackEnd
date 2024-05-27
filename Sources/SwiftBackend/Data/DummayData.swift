//
//  DummayData.swift
//  SwiftBackend
//
//  Created by Sunil Verma on 26/05/24.
//

import Foundation

struct DummayData {
    
   static func getEmployeeList() -> [[String: Any]] {
        return [
              [
                "id": "1",
                "name": "Sunil Verma",
                "age": "32"
              ],
              [
                "id": "2",
                "name": "S John",
                "age": "55"
              ],
              [
                "id": "3",
                "name": "H Linema",
                "age": "44"
              ],
              [
                "id": "4",
                "name": "Rupesh",
                "age": "22"
              ]
            ]
          
    }
}
