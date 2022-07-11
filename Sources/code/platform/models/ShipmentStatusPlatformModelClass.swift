

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentStatus
         Used By: Orders
     */

    class ShipmentStatus: Codable {
        public var hexCode: String

        public var title: String

        public var opsStatus: String

        public var status: String

        public var actualStatus: String

        public enum CodingKeys: String, CodingKey {
            case hexCode = "hex_code"

            case title

            case opsStatus = "ops_status"

            case status

            case actualStatus = "actual_status"
        }

        public init(actualStatus: String, hexCode: String, opsStatus: String, status: String, title: String) {
            self.hexCode = hexCode

            self.title = title

            self.opsStatus = opsStatus

            self.status = status

            self.actualStatus = actualStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hexCode = try container.decode(String.self, forKey: .hexCode)

            title = try container.decode(String.self, forKey: .title)

            opsStatus = try container.decode(String.self, forKey: .opsStatus)

            status = try container.decode(String.self, forKey: .status)

            actualStatus = try container.decode(String.self, forKey: .actualStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hexCode, forKey: .hexCode)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(opsStatus, forKey: .opsStatus)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(actualStatus, forKey: .actualStatus)
        }
    }
}
