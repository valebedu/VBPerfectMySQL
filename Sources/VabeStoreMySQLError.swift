//
//  VabeStoreMySQLError.swift
//  VabeMySQL
//
//  Created by Valentin Bercot on 14/02/2017.
//
//

public enum VabeStoreMySQLError: Error
{
    case cannotConnect(code: UInt32, message: String)
    case cannotSelectDatabase(code: UInt32, message: String)
    case parsingFailed
    case querryFailed(code: UInt32, message: String)
}
