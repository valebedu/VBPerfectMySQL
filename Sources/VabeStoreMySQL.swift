//
//  VabeStoreMySQL.swift
//  VabeMySQL
//
//  Created by Valentin Bercot on 14/02/2017.
//
//

import Foundation
import MySQL

/**
 `VabeStoreMySQL` class help a MySQL store class by adding the common logic about initializing and deinitializing the connection to MySQL database. This class should be extended in order to be used properly.
 
 - authors: Valentin Bercot
 */
open class VabeStoreMySQL
{
    /**
     MySQL instance, this instance should be used to make MySQL querries.
     */
    public let mySql: MySQL
    
    /**
     MySQL date formatter, this formatter should be used to convert native datetime to MySQL datetime and vice versa.
     */
    public let dateFormatter: DateFormatter
    
    /**
     - parameters:
       - host: the MySQL host.
       - user: the MySQL user name.
       - password: the MySQL user password.
       - database: the MySQL database name.
     */
    public init(host: String, user: String, password: String, database: String) throws
    {
        mySql = MySQL()
        
        let connected = mySql.connect(host: host, user: user, password: password)
        
        guard connected else
        {
            throw VabeStoreMySQLError.cannotConnect(code: mySql.errorCode(), message: mySql.errorMessage())
        }
        
        guard mySql.selectDatabase(named: database) else
        {
            throw VabeStoreMySQLError.cannotSelectDatabase(code: mySql.errorCode(), message: mySql.errorMessage())
        }
        
        dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .full
        dateFormatter.timeStyle = .full
        
        dateFormatter.locale = Locale(identifier: "en_US")
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
    }
    
    /**
     - parameters:
       -configurator: the MySQL configurator with host, user, password and database.
     */
    public convenience init(configurator: VabeStoreMySQLConfigurator) throws
    {
        do
        {
            try self.init(host: configurator.host, user: configurator.user, password: configurator.password, database: configurator.database)
        }
        catch
        {
            throw error
        }
    }
    
    deinit
    {
        mySql.close()
    }
}
