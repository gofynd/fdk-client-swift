

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentStatus
         Used By: Order
     */

    class ShipmentStatus: Codable {
        public var title: String

        public var opsStatus: String

        public var actualStatus: String

        public var status: String

        public var hexCode: String

        public enum CodingKeys: String, CodingKey {
            case title

            case opsStatus = "ops_status"

            case actualStatus = "actual_status"

            case status

            case hexCode = "hex_code"
        }

        public init(actualStatus: String, hexCode: String, opsStatus: String, status: String, title: String) {
            self.title = title

            self.opsStatus = opsStatus

            self.actualStatus = actualStatus

            self.status = status

            self.hexCode = hexCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            title = try container.decode(String.self, forKey: .title)

            opsStatus = try container.decode(String.self, forKey: .opsStatus)

            actualStatus = try container.decode(String.self, forKey: .actualStatus)

            status = try container.decode(String.self, forKey: .status)

            hexCode = try container.decode(String.self, forKey: .hexCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(opsStatus, forKey: .opsStatus)

            try? container.encodeIfPresent(actualStatus, forKey: .actualStatus)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(hexCode, forKey: .hexCode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentStatus
         Used By: Order
     */

    class ShipmentStatus: Codable {
        public var title: String

        public var opsStatus: String

        public var actualStatus: String

        public var status: String

        public var hexCode: String

        public enum CodingKeys: String, CodingKey {
            case title

            case opsStatus = "ops_status"

            case actualStatus = "actual_status"

            case status

            case hexCode = "hex_code"
        }

        public init(actualStatus: String, hexCode: String, opsStatus: String, status: String, title: String) {
            self.title = title

            self.opsStatus = opsStatus

            self.actualStatus = actualStatus

            self.status = status

            self.hexCode = hexCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            title = try container.decode(String.self, forKey: .title)

            opsStatus = try container.decode(String.self, forKey: .opsStatus)

            actualStatus = try container.decode(String.self, forKey: .actualStatus)

            status = try container.decode(String.self, forKey: .status)

            hexCode = try container.decode(String.self, forKey: .hexCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(opsStatus, forKey: .opsStatus)

            try? container.encodeIfPresent(actualStatus, forKey: .actualStatus)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(hexCode, forKey: .hexCode)
        }
    }
}
