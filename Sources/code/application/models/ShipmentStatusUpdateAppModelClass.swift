

import Foundation
public extension ApplicationClient {
    /*
         Model: ShipmentStatusUpdate
         Used By: Order
     */
    class ShipmentStatusUpdate: Codable {
        public var success: Bool

        public var message: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case success

            case message
        }

        public init(message: [[String: Any]], success: Bool) {
            self.success = success

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode([[String: Any]].self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
