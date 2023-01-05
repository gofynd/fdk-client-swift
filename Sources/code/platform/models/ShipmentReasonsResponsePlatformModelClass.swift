

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentReasonsResponse
         Used By: Order
     */

    class ShipmentReasonsResponse: Codable {
        public var success: Bool

        public var message: String

        public var reasons: [ShipmentResponseReasons]

        public enum CodingKeys: String, CodingKey {
            case success

            case message

            case reasons
        }

        public init(message: String, reasons: [ShipmentResponseReasons], success: Bool) {
            self.success = success

            self.message = message

            self.reasons = reasons
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)

            reasons = try container.decode([ShipmentResponseReasons].self, forKey: .reasons)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(reasons, forKey: .reasons)
        }
    }
}
