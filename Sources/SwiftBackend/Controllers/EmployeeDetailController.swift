//
//  EmployeeDetailController.swift
//  SwiftBackend
//
//  Created by Sunil Verma on 26/05/24.
//

import Foundation

import PerfectLib
import PerfectHTTP
import PerfectHTTPServer

class EmployeeDetailController {
    
    func handlerEmployeeDetail(request: HTTPRequest, response: HTTPResponse) {
        do {
            guard let empId = request.urlVariables["id"] else {
                
                let data:[String: Any] = [ "code": 400,
                                           "message": "Id Missing"
                ]
                try? response.setBody(json: data)
                    .setHeader(.contentType, value: "application/json")
                    .completed(status: .badRequest)
                return
            }
            
#warning("Here logic will place for get data from  specific DB")

            let employees = DummayData.getEmployeeList()
            let empData = employees.first { obj in
                if let id = obj["id"] as? String {
                    return id == empId
                }else {
                    return false
                }
            }
            let data:[String: Any] = [ "code": 200,
                                       "message": "Success",
                                       "data":empData ?? []
            ]
            try response.setBody(json: data)
                .setHeader(.contentType, value: "application/json")
                .completed(status: .ok)
        }catch {
            let data:[String: Any] = [ "code": 400,
                                       "message": "record not found"
            ]
            try? response.setBody(json: data)
                .setHeader(.contentType, value: "application/json")
                .completed(status: .internalServerError)
        }
    }
    
}
