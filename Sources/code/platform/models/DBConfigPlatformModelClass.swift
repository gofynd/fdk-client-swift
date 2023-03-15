

import Foundation
public extension PlatformClient {
    /*
         Model: DBConfig
         Used By: Inventory
     */

    class DBConfig: Codable {
        public var vendor: String?

        public var host: String?

        public var port: Int?

        public var username: String?

        public var password: String?

        public var dbname: String?

        public var query: String?

        public var procedure: Bool?

        public var driverClass: String?

        public var jdbcUrl: String?

        public var optionalProperties: [String: String]?

        public enum CodingKeys: String, CodingKey {
            case vendor

            case host

            case port

            case username

            case password

            case dbname

            case query

            case procedure

            case driverClass = "driver_class"

            case jdbcUrl = "jdbc_url"

            case optionalProperties = "optional_properties"
        }

        public init(dbname: String? = nil, driverClass: String? = nil, host: String? = nil, jdbcUrl: String? = nil, optionalProperties: [String: String]? = nil, password: String? = nil, port: Int? = nil, procedure: Bool? = nil, query: String? = nil, username: String? = nil, vendor: String? = nil) {
            self.vendor = vendor

            self.host = host

            self.port = port

            self.username = username

            self.password = password

            self.dbname = dbname

            self.query = query

            self.procedure = procedure

            self.driverClass = driverClass

            self.jdbcUrl = jdbcUrl

            self.optionalProperties = optionalProperties
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                vendor = try container.decode(String.self, forKey: .vendor)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                host = try container.decode(String.self, forKey: .host)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                port = try container.decode(Int.self, forKey: .port)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                password = try container.decode(String.self, forKey: .password)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dbname = try container.decode(String.self, forKey: .dbname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                query = try container.decode(String.self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                procedure = try container.decode(Bool.self, forKey: .procedure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                driverClass = try container.decode(String.self, forKey: .driverClass)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                jdbcUrl = try container.decode(String.self, forKey: .jdbcUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                optionalProperties = try container.decode([String: String].self, forKey: .optionalProperties)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(vendor, forKey: .vendor)

            try? container.encodeIfPresent(host, forKey: .host)

            try? container.encodeIfPresent(port, forKey: .port)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(password, forKey: .password)

            try? container.encodeIfPresent(dbname, forKey: .dbname)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(procedure, forKey: .procedure)

            try? container.encodeIfPresent(driverClass, forKey: .driverClass)

            try? container.encodeIfPresent(jdbcUrl, forKey: .jdbcUrl)

            try? container.encodeIfPresent(optionalProperties, forKey: .optionalProperties)
        }
    }
}
