//
//  File.swift
//  
//
//  Created by Mikk Rätsep on 05.05.20.
//

import Foundation


@available(OSX 10.15, *)
class _Field: DocsGeneratable {

    struct _Argument {
        let name: String
        let type: String
    }

    var name: String = ""
    var type: String = ""
    var isType: Bool = false
    var documentation: [String] = []
    var arguments: [_Argument] = []
}
