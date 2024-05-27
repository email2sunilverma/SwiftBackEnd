//
//  Router.swift
//  SwiftBackend
//
//  Created by Sunil Verma on 26/05/24.
//

import Foundation
import PerfectLib
import PerfectHTTP
import PerfectHTTPServer

func setupRouter() -> Routes {
    var routes = Routes()

    routes.add(method: .get, uri: "/") { request, response in
        response.setBody(string: "Server running on this port....")
            .completed()
    }
    routes.add(method: .get, uri: "/employee") { request, response in
        EmployeeListController().handlerEmployeeList(request: request, response: response)
    }
    
    routes.add(method: .get, uri: "/employeeDetail/{id}") { request, response in
        EmployeeDetailController().handlerEmployeeDetail(request: request, response: response)
    }
    
    return routes
    
}
