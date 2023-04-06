

import Foundation

public extension PlatformClient.Logistic {
    /*
         Model: ZoneResponse
         Used By: Logistic
     */

    class ZoneResponse: Codable {
        public var statusCode: Int

        public var success: Bool

        public var zoneId: String

        public enum CodingKeys: String, CodingKey {
            case statusCode = "status_code"

            case success

            case zoneId = "zone_id"
        }

        public init(statusCode: Int, success: Bool, zoneId: String) {
            self.statusCode = statusCode

            self.success = success

            self.zoneId = zoneId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            success = try container.decode(Bool.self, forKey: .success)

            zoneId = try container.decode(String.self, forKey: .zoneId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Logistic {
    /*
         Model: ZoneResponse
         Used By: Logistic
     */

    class ZoneResponse: Codable {
        public var statusCode: Int

        public var success: Bool

        public var zoneId: String

        public enum CodingKeys: String, CodingKey {
            case statusCode = "status_code"

            case success

            case zoneId = "zone_id"
        }

        public init(statusCode: Int, success: Bool, zoneId: String) {
            self.statusCode = statusCode

            self.success = success

            self.zoneId = zoneId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            success = try container.decode(Bool.self, forKey: .success)

            zoneId = try container.decode(String.self, forKey: .zoneId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
        }
    }
}
