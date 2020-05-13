//
//  CaseType.swift
//  CodeGenerator
//
//  Created by Mikk Rätsep on 11.05.20.
//

import Foundation


enum CaseType {

    /// text like this
    case lowercase

    /// TEXT LIKE THIS
    case uppercase

    /// Text Like This
    case capitalized

    /// textLikeThis
    case camelCase

    /// TextLikeThis
    case pascalCase

    /// text_like_this
    case snakeCase

    /// text-like-this
    case kebabCase
}
