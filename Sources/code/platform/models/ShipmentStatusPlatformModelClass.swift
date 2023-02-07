

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentStatus
         Used By: Order
     */

    class ShipmentStatus: Codable {
        public var opsStatus: String

        public var status: String

        public var hexCode: String

        public var actualStatus: String

        public var title: String

        public enum CodingKeys: String, CodingKey {
            case opsStatus = "ops_status"

            case status

            case hexCode = "hex_code"

            case actualStatus = "actual_status"

            case title
        }

        public init(actualStatus: String, hexCode: String, opsStatus: String, status: String, title: String) {
            self.opsStatus = opsStatus

            self.status = status

            self.hexCode = hexCode

            self.actualStatus = actualStatus

            self.title = title
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            opsStatus = try container.decode(String.self, forKey: .opsStatus)

            status = try container.decode(String.self, forKey: .status)

            hexCode = try container.decode(String.self, forKey: .hexCode)

            actualStatus = try container.decode(String.self, forKey: .actualStatus)

            title = try container.decode(String.self, forKey: .title)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(opsStatus, forKey: .opsStatus)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(hexCode, forKey: .hexCode)

            try? container.encodeIfPresent(actualStatus, forKey: .actualStatus)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }
}
