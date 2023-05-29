

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: ShipmentStatusUpdate
         Used By: Order
     */
    class ShipmentStatusUpdate: Codable {
        public var message: [[String: Any]]

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case message

            case success
        }

        public init(message: [[String: Any]], success: Bool) {
            self.message = message

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode([[String: Any]].self, forKey: .message)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
