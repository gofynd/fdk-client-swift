

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentStatus
         Used By: Order
     */

    class ShipmentStatus: Codable {
        public var createdAt: String?

        public var actualStatus: String

        public var title: String

        public var status: String

        public var opsStatus: String

        public var hexCode: String

        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"

            case actualStatus = "actual_status"

            case title

            case status

            case opsStatus = "ops_status"

            case hexCode = "hex_code"
        }

        public init(actualStatus: String, createdAt: String? = nil, hexCode: String, opsStatus: String, status: String, title: String) {
            self.createdAt = createdAt

            self.actualStatus = actualStatus

            self.title = title

            self.status = status

            self.opsStatus = opsStatus

            self.hexCode = hexCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            actualStatus = try container.decode(String.self, forKey: .actualStatus)

            title = try container.decode(String.self, forKey: .title)

            status = try container.decode(String.self, forKey: .status)

            opsStatus = try container.decode(String.self, forKey: .opsStatus)

            hexCode = try container.decode(String.self, forKey: .hexCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(actualStatus, forKey: .actualStatus)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(opsStatus, forKey: .opsStatus)

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
        public var createdAt: String?

        public var actualStatus: String

        public var title: String

        public var status: String

        public var opsStatus: String

        public var hexCode: String

        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"

            case actualStatus = "actual_status"

            case title

            case status

            case opsStatus = "ops_status"

            case hexCode = "hex_code"
        }

        public init(actualStatus: String, createdAt: String? = nil, hexCode: String, opsStatus: String, status: String, title: String) {
            self.createdAt = createdAt

            self.actualStatus = actualStatus

            self.title = title

            self.status = status

            self.opsStatus = opsStatus

            self.hexCode = hexCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            actualStatus = try container.decode(String.self, forKey: .actualStatus)

            title = try container.decode(String.self, forKey: .title)

            status = try container.decode(String.self, forKey: .status)

            opsStatus = try container.decode(String.self, forKey: .opsStatus)

            hexCode = try container.decode(String.self, forKey: .hexCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(actualStatus, forKey: .actualStatus)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(opsStatus, forKey: .opsStatus)

            try? container.encodeIfPresent(hexCode, forKey: .hexCode)
        }
    }
}