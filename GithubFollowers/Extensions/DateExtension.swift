//
//  Date+Ext.swift
//  GithubFollowers
//
//  Created by Exrhan Selmani on 27/01/2020.
//  Copyright © 2020 Exrhan Selmani. All rights reserved.
//

import Foundation

extension Date {
    func convertToMonthYearFormat() -> String {
        let dateFormatter           = DateFormatter()
        dateFormatter.dateFormat    = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
