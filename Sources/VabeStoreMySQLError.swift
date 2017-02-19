//
//  VabeStoreMySQLError.swift
//  VabeMySQL
//
//  Created by Valentin Bercot on 14/02/2017.
//
//

/**
 `Error` enum used to represent error cases throwns by `VabeStoreMySQL` class and extended classes.
 
 - authors: Valentin Bercot
 */
public enum VabeStoreMySQLError: Error
{
    case cannotConnect(code: UInt32, message: String)
    case cannotSelectDatabase(code: UInt32, message: String)
    case parsingFailed
    case querryFailed(code: UInt32, message: String)
}
