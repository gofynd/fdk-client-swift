

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentStatus
         Used By: Orders
     */

    class ShipmentStatus: Codable {
        public var status: String

        public var opsStatus: String

        public var hexCode: String

        public var actualStatus: String

        public var title: String

        public enum CodingKeys: String, CodingKey {
            case status

            case opsStatus = "ops_status"

            case hexCode = "hex_code"

            case actualStatus = "actual_status"

            case title
        }

        public init(actualStatus: String, hexCode: String, opsStatus: String, status: String, title: String) {
            self.status = status

            self.opsStatus = opsStatus

            self.hexCode = hexCode

            self.actualStatus = actualStatus

            self.title = title
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            opsStatus = try container.decode(String.self, forKey: .opsStatus)

            hexCode = try container.decode(String.self, forKey: .hexCode)

            actualStatus = try container.decode(String.self, forKey: .actualStatus)

            title = try container.decode(String.self, forKey: .title)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(opsStatus, forKey: .opsStatus)

            try? container.encodeIfPresent(hexCode, forKey: .hexCode)

            try? container.encodeIfPresent(actualStatus, forKey: .actualStatus)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }
}
