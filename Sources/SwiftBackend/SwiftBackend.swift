
import PerfectLib
import PerfectHTTP
import PerfectHTTPServer

@main

public struct SwiftBackend {
   // public private(set) var text = "Hello, World!"
    
    public static func main() {
        let server = HTTPServer()
        server.serverPort = 8080
        server.addRoutes(setupRouter())

        //print(SwiftBackend().text)
        do {
            try server.start()
        }catch {
            print("Error in starting server")
        }
    }
}



