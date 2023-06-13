

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentStatus
         Used By: Order
     */

    class ShipmentStatus: Codable {
        public var opsStatus: String

        public var actualStatus: String

        public var title: String

        public var hexCode: String

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case opsStatus = "ops_status"

            case actualStatus = "actual_status"

            case title

            case hexCode = "hex_code"

            case status
        }

        public init(actualStatus: String, hexCode: String, opsStatus: String, status: String, title: String) {
            self.opsStatus = opsStatus

            self.actualStatus = actualStatus

            self.title = title

            self.hexCode = hexCode

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            opsStatus = try container.decode(String.self, forKey: .opsStatus)

            actualStatus = try container.decode(String.self, forKey: .actualStatus)

            title = try container.decode(String.self, forKey: .title)

            hexCode = try container.decode(String.self, forKey: .hexCode)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(opsStatus, forKey: .opsStatus)

            try? container.encodeIfPresent(actualStatus, forKey: .actualStatus)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(hexCode, forKey: .hexCode)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentStatus
         Used By: Order
     */

    class ShipmentStatus: Codable {
        public var opsStatus: String

        public var actualStatus: String

        public var title: String

        public var hexCode: String

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case opsStatus = "ops_status"

            case actualStatus = "actual_status"

            case title

            case hexCode = "hex_code"

            case status
        }

        public init(actualStatus: String, hexCode: String, opsStatus: String, status: String, title: String) {
            self.opsStatus = opsStatus

            self.actualStatus = actualStatus

            self.title = title

            self.hexCode = hexCode

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            opsStatus = try container.decode(String.self, forKey: .opsStatus)

            actualStatus = try container.decode(String.self, forKey: .actualStatus)

            title = try container.decode(String.self, forKey: .title)

            hexCode = try container.decode(String.self, forKey: .hexCode)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(opsStatus, forKey: .opsStatus)

            try? container.encodeIfPresent(actualStatus, forKey: .actualStatus)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(hexCode, forKey: .hexCode)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
