

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ZoneResponse
         Used By: Serviceability
     */

    class ZoneResponse: Codable {
        public var success: Bool

        public var zoneId: String

        public var statusCode: Int

        public enum CodingKeys: String, CodingKey {
            case success

            case zoneId = "zone_id"

            case statusCode = "status_code"
        }

        public init(statusCode: Int, success: Bool, zoneId: String) {
            self.success = success

            self.zoneId = zoneId

            self.statusCode = statusCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            statusCode = try container.decode(Int.self, forKey: .statusCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: ZoneResponse
         Used By: Serviceability
     */

    class ZoneResponse: Codable {
        public var success: Bool

        public var zoneId: String

        public var statusCode: Int

        public enum CodingKeys: String, CodingKey {
            case success

            case zoneId = "zone_id"

            case statusCode = "status_code"
        }

        public init(statusCode: Int, success: Bool, zoneId: String) {
            self.success = success

            self.zoneId = zoneId

            self.statusCode = statusCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            statusCode = try container.decode(Int.self, forKey: .statusCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
        }
    }
}
