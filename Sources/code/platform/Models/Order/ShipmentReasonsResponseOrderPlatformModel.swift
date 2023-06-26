

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentReasonsResponse
         Used By: Order
     */

    class ShipmentReasonsResponse: Codable {
        public var success: Bool

        public var reasons: [ShipmentResponseReasons]

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case success

            case reasons

            case message
        }

        public init(message: String, reasons: [ShipmentResponseReasons], success: Bool) {
            self.success = success

            self.reasons = reasons

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            reasons = try container.decode([ShipmentResponseReasons].self, forKey: .reasons)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

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
        public var success: Bool

        public var reasons: [ShipmentResponseReasons]

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case success

            case reasons

            case message
        }

        public init(message: String, reasons: [ShipmentResponseReasons], success: Bool) {
            self.success = success

            self.reasons = reasons

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            reasons = try container.decode([ShipmentResponseReasons].self, forKey: .reasons)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
