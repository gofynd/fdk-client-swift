

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentReasonsResponse
         Used By: Order
     */

    class ShipmentReasonsResponse: Codable {
        public var reasons: [ShipmentResponseReasons]

        public var success: Bool

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case reasons

            case success

            case message
        }

        public init(message: String, reasons: [ShipmentResponseReasons], success: Bool) {
            self.reasons = reasons

            self.success = success

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            reasons = try container.decode([ShipmentResponseReasons].self, forKey: .reasons)

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentReasonsResponse
         Used By: Order
     */

    class ShipmentReasonsResponse: Codable {
        public var reasons: [ShipmentResponseReasons]

        public var success: Bool

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case reasons

            case success

            case message
        }

        public init(message: String, reasons: [ShipmentResponseReasons], success: Bool) {
            self.reasons = reasons

            self.success = success

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            reasons = try container.decode([ShipmentResponseReasons].self, forKey: .reasons)

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
