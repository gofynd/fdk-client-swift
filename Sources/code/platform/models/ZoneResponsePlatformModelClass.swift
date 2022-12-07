

import Foundation
public extension PlatformClient {
    /*
         Model: ZoneResponse
         Used By: Serviceability
     */

    class ZoneResponse: Codable {
        public var success: Bool

        public var statusCode: Int

        public var zoneId: String

        public enum CodingKeys: String, CodingKey {
            case success

            case statusCode = "status_code"

            case zoneId = "zone_id"
        }

        public init(statusCode: Int, success: Bool, zoneId: String) {
            self.success = success

            self.statusCode = statusCode

            self.zoneId = zoneId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            zoneId = try container.decode(String.self, forKey: .zoneId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
        }
    }
}
