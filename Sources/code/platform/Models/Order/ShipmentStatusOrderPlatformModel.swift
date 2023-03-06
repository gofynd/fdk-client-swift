

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentStatus
         Used By: Order
     */

    class ShipmentStatus: Codable {
        public var hexCode: String

        public var opsStatus: String

        public var status: String

        public var title: String

        public var actualStatus: String

        public var createdAt: String?

        public enum CodingKeys: String, CodingKey {
            case hexCode = "hex_code"

            case opsStatus = "ops_status"

            case status

            case title

            case actualStatus = "actual_status"

            case createdAt = "created_at"
        }

        public init(actualStatus: String, createdAt: String? = nil, hexCode: String, opsStatus: String, status: String, title: String) {
            self.hexCode = hexCode

            self.opsStatus = opsStatus

            self.status = status

            self.title = title

            self.actualStatus = actualStatus

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hexCode = try container.decode(String.self, forKey: .hexCode)

            opsStatus = try container.decode(String.self, forKey: .opsStatus)

            status = try container.decode(String.self, forKey: .status)

            title = try container.decode(String.self, forKey: .title)

            actualStatus = try container.decode(String.self, forKey: .actualStatus)

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hexCode, forKey: .hexCode)

            try? container.encodeIfPresent(opsStatus, forKey: .opsStatus)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(actualStatus, forKey: .actualStatus)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentStatus
         Used By: Order
     */

    class ShipmentStatus: Codable {
        public var hexCode: String

        public var opsStatus: String

        public var status: String

        public var title: String

        public var actualStatus: String

        public var createdAt: String?

        public enum CodingKeys: String, CodingKey {
            case hexCode = "hex_code"

            case opsStatus = "ops_status"

            case status

            case title

            case actualStatus = "actual_status"

            case createdAt = "created_at"
        }

        public init(actualStatus: String, createdAt: String? = nil, hexCode: String, opsStatus: String, status: String, title: String) {
            self.hexCode = hexCode

            self.opsStatus = opsStatus

            self.status = status

            self.title = title

            self.actualStatus = actualStatus

            self.createdAt = createdAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hexCode = try container.decode(String.self, forKey: .hexCode)

            opsStatus = try container.decode(String.self, forKey: .opsStatus)

            status = try container.decode(String.self, forKey: .status)

            title = try container.decode(String.self, forKey: .title)

            actualStatus = try container.decode(String.self, forKey: .actualStatus)

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hexCode, forKey: .hexCode)

            try? container.encodeIfPresent(opsStatus, forKey: .opsStatus)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(actualStatus, forKey: .actualStatus)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
        }
    }
}
