//
//  VabeStoreMySQL.swift
//  VabeMySQL
//
//  Created by Valentin Bercot on 14/02/2017.
//
//

import Foundation

public class VabeStoreMySQL
{
    public let mySql: MySQL
    public let dateFormatter: DateFormatter
    
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
