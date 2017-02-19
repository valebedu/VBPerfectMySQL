//
//  VabeStoreMySQLConfigurator.swift
//  VabeMySQL
//
//  Created by Valentin Bercot on 14/02/2017.
//
//

/**
 Configurator used to initialize a `VabeStoreMySQL`.
 
 - authors: Valentin Bercot
 */
public struct VabeStoreMySQLConfigurator
{
    /**
     MySQL host.
     */
    public let host: String
    
    /**
     MySQL user name.
     */
    public let user: String
    
    /**
     MySQL user password.
     */
    public let password: String
    
    /**
     MySQL database name.
     */
    public let database: String
    
    /**
     - parameters:
       - host: the MySQL host.
       - user: the MySQL user name.
       - password: the MySQL user password.
       - database: the MySQL database name.
     */
    public init(host: String, user: String, password: String, database: String)
    {
        self.host = host
        self.user = user
        self.password = password
        self.database = database
    }
}
