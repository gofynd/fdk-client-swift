

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentReasonsResponse
         Used By: Order
     */

    class ShipmentReasonsResponse: Codable {
        public var message: String

        public var success: Bool

        public var reasons: [ShipmentResponseReasons]

        public enum CodingKeys: String, CodingKey {
            case message

            case success

            case reasons
        }

        public init(message: String, reasons: [ShipmentResponseReasons], success: Bool) {
            self.message = message

            self.success = success

            self.reasons = reasons
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            success = try container.decode(Bool.self, forKey: .success)

            reasons = try container.decode([ShipmentResponseReasons].self, forKey: .reasons)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(reasons, forKey: .reasons)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentReasonsResponse
         Used By: Order
     */

    class ShipmentReasonsResponse: Codable {
        public var message: String

        public var success: Bool

        public var reasons: [ShipmentResponseReasons]

        public enum CodingKeys: String, CodingKey {
            case message

            case success

            case reasons
        }

        public init(message: String, reasons: [ShipmentResponseReasons], success: Bool) {
            self.message = message

            self.success = success

            self.reasons = reasons
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            success = try container.decode(Bool.self, forKey: .success)

            reasons = try container.decode([ShipmentResponseReasons].self, forKey: .reasons)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(reasons, forKey: .reasons)
        }
    }
}
