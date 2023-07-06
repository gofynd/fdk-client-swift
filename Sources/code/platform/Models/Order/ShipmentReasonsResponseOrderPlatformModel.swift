

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentReasonsResponse
         Used By: Order
     */

    class ShipmentReasonsResponse: Codable {
        public var message: String

        public var reasons: [ShipmentResponseReasons]

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case message

            case reasons

            case success
        }

        public init(message: String, reasons: [ShipmentResponseReasons], success: Bool) {
            self.message = message

            self.reasons = reasons

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            reasons = try container.decode([ShipmentResponseReasons].self, forKey: .reasons)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(success, forKey: .success)
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

        public var reasons: [ShipmentResponseReasons]

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case message

            case reasons

            case success
        }

        public init(message: String, reasons: [ShipmentResponseReasons], success: Bool) {
            self.message = message

            self.reasons = reasons

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            reasons = try container.decode([ShipmentResponseReasons].self, forKey: .reasons)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(reasons, forKey: .reasons)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
