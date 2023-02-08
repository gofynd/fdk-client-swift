

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentStatus
         Used By: Order
     */

    class ShipmentStatus: Codable {
        public var title: String

        public var opsStatus: String

        public var hexCode: String

        public var status: String

        public var actualStatus: String

        public enum CodingKeys: String, CodingKey {
            case title

            case opsStatus = "ops_status"

            case hexCode = "hex_code"

            case status

            case actualStatus = "actual_status"
        }

        public init(actualStatus: String, hexCode: String, opsStatus: String, status: String, title: String) {
            self.title = title

            self.opsStatus = opsStatus

            self.hexCode = hexCode

            self.status = status

            self.actualStatus = actualStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            title = try container.decode(String.self, forKey: .title)

            opsStatus = try container.decode(String.self, forKey: .opsStatus)

            hexCode = try container.decode(String.self, forKey: .hexCode)

            status = try container.decode(String.self, forKey: .status)

            actualStatus = try container.decode(String.self, forKey: .actualStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(opsStatus, forKey: .opsStatus)

            try? container.encodeIfPresent(hexCode, forKey: .hexCode)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(actualStatus, forKey: .actualStatus)
        }
    }
}
