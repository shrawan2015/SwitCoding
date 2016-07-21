//
//  GlobalConstants.swift
//  AlmoFireExample
//
//  Created by ShrawanKumar Sharma on 21/07/16.
//  Copyright © 2016 ShrawanKumar Sharma. All rights reserved.
//

import Foundation



var globalURL = "THIS IS URL"


let headers = [
    "Authorization": "Basic QWxhZGRpbjpvcGVuIHNlc2FtZQ==",
    "Accept": "application/json"
]


 enum HTTPREQUEST: String {
    case OPTIONS, GET, HEAD, POST, PUT, PATCH, DELETE, TRACE, CONNECT
}