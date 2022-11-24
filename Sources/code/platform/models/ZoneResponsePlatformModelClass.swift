

import Foundation
public extension PlatformClient {
    /*
         Model: ZoneResponse
         Used By: Serviceability
     */

    class ZoneResponse: Codable {
        public var zoneId: String

        public var statusCode: Int

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case zoneId = "zone_id"

            case statusCode = "status_code"

            case success
        }

        public init(statusCode: Int, success: Bool, zoneId: String) {
            self.zoneId = zoneId

            self.statusCode = statusCode

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            statusCode = try container.decode(Int.self, forKey: .statusCode)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(statusCode, forKey: .statusCode)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
