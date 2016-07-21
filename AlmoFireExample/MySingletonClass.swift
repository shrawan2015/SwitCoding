//
//  MySingletonClass.swift
//  AlmoFireExample
//
//  Created by ShrawanKumar Sharma on 21/07/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//



import Foundation
import Alamofire

typealias ClosureType = (success:Bool) -> ()

class MySingletonClass {
    
    static var sharedInstacne = MySingletonClass()

    private init()
    {
        // initializer code here
    }
    
    func NetworkCall(URL:NSString,completionHandler: ClosureType) {

        let configuration = NSURLSessionConfiguration.defaultSessionConfiguration()
        let manager = Alamofire.Manager(configuration: configuration)
        
        manager.request(.GET, NSURL(fileURLWithPath: URL as String), headers: headers)
            .validate(statusCode: 200..<300)
            .responseJSON { response in
        
                if(response.result.isSuccess) {
                    completionHandler(success: true)

                }
                else {
                    completionHandler(success: false)

                }
                debugPrint(response)
        }
    }
    
    
    
}

/*
 
 
 REQUEST 
 VALIDATE 
 RESPONSE -- Response,Response String ,Response Data, Response Property,Response JSON
 
 
 Network Request and Response 
 
 
 Making a Request
 import Alamofire
 
 Alamofire.request(.GET, "https://httpbin.org/get")
 Response Handling
 
 Alamofire.request(.GET, "https://httpbin.org/get", parameters: ["foo": "bar"])
 .responseJSON { response in
 print(response.request)  // original URL request
 print(response.response) // URL response
 print(response.data)     // server data
 print(response.result)   // result of response serialization
 
 if let JSON = response.result.value {
 print("JSON: \(JSON)")
 }
 }
 
 //Validate for statuscode checking in nature
 Alamofire.request(.GET, "https://httpbin.org/get", parameters: ["foo": "bar"])
 .validate(statusCode: 200..<300)
 .validate(contentType: ["application/json"])
 .response { response in
 print(response)
 }
 
 
 
 response()
 responseData()
 responseString(encoding: NSStringEncoding)
 responseJSON(options: NSJSONReadingOptions)
 responsePropertyList(options: NSPropertyListReadOptions)
 
 ///
 
 Alamofire.request(.POST, "https://httpbin.org/post")
 
 Alamofire.request(.PUT, "https://httpbin.org/put")
 
 Alamofire.request(.DELETE, "https://httpbin.org/delete")
 
 
 let parameters = [
 "foo": "bar",
 "baz": ["a", 1],
 "qux": [
 "x": 1,
 "y": 2,
 "z": 3
 ]
 ]
 */








/*
 
 
 Manager is used at the top of the request
 let manager = Alamofire.Manager.sharedInstance
 manager.request(NSURLRequest(URL: NSURL(string: "https://httpbin.org/get")!))
 
 
 
 Alamofire.request(.GET, "https://httpbin.org/get")
 let manager = Alamofire.Manager.sharedInstance
 manager.request(NSURLRequest(URL: NSURL(string: "https://httpbin.org/get")!))
 
 
 
 Creating a Manager with Default Configuration
 
 let configuration = NSURLSessionConfiguration.defaultSessionConfiguration()
 let manager = Alamofire.Manager(configuration: configuration)
 Creating a Manager with Background Configuration
 
 let configuration = NSURLSessionConfiguration.backgroundSessionConfigurationWithIdentifier("com.example.app.background")
 let manager = Alamofire.Manager(configuration: configuration)
 
 
 Creating a Manager with Default Configuration
 
 let configuration = NSURLSessionConfiguration.defaultSessionConfiguration()
 let manager = Alamofire.Manager(configuration: configuration)
 Creating a Manager with Background Configuration
 
 let configuration = NSURLSessionConfiguration.backgroundSessionConfigurationWithIdentifier("com.example.app.background")
 let manager = Alamofire.Manager(configuration: configuration)
 Creating a Manager with Ephemeral Configuration
 
 let configuration = NSURLSessionConfiguration.ephemeralSessionConfiguration()
 let manager = Alamofire.Manager(configuration: configuration)
 Modifying Session Configuration
 
 var defaultHeaders = Alamofire.Manager.sharedInstance.session.configuration.HTTPAdditionalHeaders ?? [:]
 defaultHeaders["DNT"] = "1 (Do Not Track Enabled)"
 
 let configuration = NSURLSessionConfiguration.defaultSessionConfiguration()
 configuration.HTTPAdditionalHeaders = defaultHeaders
 
 let manager = Alamofire.Manager(configuration: configuration)
 
 
 
 
 
 */