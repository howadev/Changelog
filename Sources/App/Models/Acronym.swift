import Vapor
import FluentSQLite

internal final class Acronym: Codable {
    internal var id: Int?
    internal var short: String
    internal var long: String
    
    internal init(short: String, long: String) {
        self.short = short
        self.long = long
    }
}

/* Replaced by `extension Acronym: SQLiteModel {}`
extension Acronym: Model {
    internal typealias Database = SQLiteDatabase
    internal typealias ID = Int
    public static var idKey: IDKey = \Acronym.id
}
*/

extension Acronym: SQLiteModel {}

extension Acronym: Migration {}

extension Acronym: Content {}
