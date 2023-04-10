

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentStatus
         Used By: Order
     */

    class ShipmentStatus: Codable {
        public var status: String

        public var hexCode: String

        public var title: String

        public var actualStatus: String

        public var opsStatus: String

        public enum CodingKeys: String, CodingKey {
            case status

            case hexCode = "hex_code"

            case title

            case actualStatus = "actual_status"

            case opsStatus = "ops_status"
        }

        public init(actualStatus: String, hexCode: String, opsStatus: String, status: String, title: String) {
            self.status = status

            self.hexCode = hexCode

            self.title = title

            self.actualStatus = actualStatus

            self.opsStatus = opsStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            hexCode = try container.decode(String.self, forKey: .hexCode)

            title = try container.decode(String.self, forKey: .title)

            actualStatus = try container.decode(String.self, forKey: .actualStatus)

            opsStatus = try container.decode(String.self, forKey: .opsStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(hexCode, forKey: .hexCode)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(actualStatus, forKey: .actualStatus)

            try? container.encodeIfPresent(opsStatus, forKey: .opsStatus)
        }
    }
}
