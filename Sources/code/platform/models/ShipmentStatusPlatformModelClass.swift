

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentStatus
         Used By: Order
     */

    class ShipmentStatus: Codable {
        public var actualStatus: String

        public var hexCode: String

        public var opsStatus: String

        public var title: String

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case actualStatus = "actual_status"

            case hexCode = "hex_code"

            case opsStatus = "ops_status"

            case title

            case status
        }

        public init(actualStatus: String, hexCode: String, opsStatus: String, status: String, title: String) {
            self.actualStatus = actualStatus

            self.hexCode = hexCode

            self.opsStatus = opsStatus

            self.title = title

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            actualStatus = try container.decode(String.self, forKey: .actualStatus)

            hexCode = try container.decode(String.self, forKey: .hexCode)

            opsStatus = try container.decode(String.self, forKey: .opsStatus)

            title = try container.decode(String.self, forKey: .title)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(actualStatus, forKey: .actualStatus)

            try? container.encodeIfPresent(hexCode, forKey: .hexCode)

            try? container.encodeIfPresent(opsStatus, forKey: .opsStatus)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
