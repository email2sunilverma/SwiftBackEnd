//
//  EmployeeListController.swift
//  SwiftBackend
//
//  Created by Sunil Verma on 26/05/24.
//

import Foundation
import PerfectLib
import PerfectHTTP
import PerfectHTTPServer

class EmployeeListController {
    
    func handlerEmployeeList(request: HTTPRequest, response: HTTPResponse) {
        do {
            let data:[String: Any] = [ "code": 200,
                         "message": "Success",
                         "data":DummayData.getEmployeeList()
                    ]
            #warning("Here logic will place for get data from  specific DB")
            try response.setBody(json: data)
                .setHeader(.contentType, value: "application/json")
                .completed(status: .ok)
        }catch {
            let data:[String: Any] = [ "code": 400,
                         "message": "Failure"
                    ]
           try? response.setBody(json: data)
                .setHeader(.contentType, value: "application/json")
                .completed(status: .internalServerError)
        }
    }
    
}
