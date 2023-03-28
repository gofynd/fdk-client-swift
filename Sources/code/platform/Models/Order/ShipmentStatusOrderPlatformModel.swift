

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentStatus
         Used By: Order
     */

    class ShipmentStatus: Codable {
        public var actualStatus: String

        public var status: String

        public var hexCode: String

        public var opsStatus: String

        public var title: String

        public enum CodingKeys: String, CodingKey {
            case actualStatus = "actual_status"

            case status

            case hexCode = "hex_code"

            case opsStatus = "ops_status"

            case title
        }

        public init(actualStatus: String, hexCode: String, opsStatus: String, status: String, title: String) {
            self.actualStatus = actualStatus

            self.status = status

            self.hexCode = hexCode

            self.opsStatus = opsStatus

            self.title = title
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            actualStatus = try container.decode(String.self, forKey: .actualStatus)

            status = try container.decode(String.self, forKey: .status)

            hexCode = try container.decode(String.self, forKey: .hexCode)

            opsStatus = try container.decode(String.self, forKey: .opsStatus)

            title = try container.decode(String.self, forKey: .title)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(actualStatus, forKey: .actualStatus)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(hexCode, forKey: .hexCode)

            try? container.encodeIfPresent(opsStatus, forKey: .opsStatus)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentStatus
         Used By: Order
     */

    class ShipmentStatus: Codable {
        public var actualStatus: String

        public var status: String

        public var hexCode: String

        public var opsStatus: String

        public var title: String

        public enum CodingKeys: String, CodingKey {
            case actualStatus = "actual_status"

            case status

            case hexCode = "hex_code"

            case opsStatus = "ops_status"

            case title
        }

        public init(actualStatus: String, hexCode: String, opsStatus: String, status: String, title: String) {
            self.actualStatus = actualStatus

            self.status = status

            self.hexCode = hexCode

            self.opsStatus = opsStatus

            self.title = title
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            actualStatus = try container.decode(String.self, forKey: .actualStatus)

            status = try container.decode(String.self, forKey: .status)

            hexCode = try container.decode(String.self, forKey: .hexCode)

            opsStatus = try container.decode(String.self, forKey: .opsStatus)

            title = try container.decode(String.self, forKey: .title)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(actualStatus, forKey: .actualStatus)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(hexCode, forKey: .hexCode)

            try? container.encodeIfPresent(opsStatus, forKey: .opsStatus)

            try? container.encodeIfPresent(title, forKey: .title)
        }
    }
}
