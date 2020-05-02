//
//  Model.swift
//  
//
//  Created by Mikk Rätsep on 02.05.20.
//

import Artemis
import Foundation


protocol Model {

    associatedtype PartialType: SelectionOutput

    init?(partial: Partial<PartialType?>?)
    init?(partial: Partial<PartialType?>)
}

extension Model {

    init?(partial: Partial<PartialType?>?) {
        guard let partial = partial else {
            return nil
        }

        self.init(partial: partial)
    }
}
