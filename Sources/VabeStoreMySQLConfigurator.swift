//
//  VabeStoreMySQLConfigurator.swift
//  VabeMySQL
//
//  Created by Valentin Bercot on 14/02/2017.
//
//

public struct VabeStoreMySQLConfigurator
{
    public let host: String
    public let user: String
    public let password: String
    public let database: String
    
    public init(host: String, user: String, password: String, database: String)
    {
        self.host = host
        self.user = user
        self.password = password
        self.database = database
    }
}
