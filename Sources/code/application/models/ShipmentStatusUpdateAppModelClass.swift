

import Foundation
public extension ApplicationClient {
    /*
         Model: ShipmentStatusUpdate
         Used By: Order
     */
    class ShipmentStatusUpdate: Codable {
        public var message: [[String: Any]]

        public var status: Bool

        public enum CodingKeys: String, CodingKey {
            case message

            case status
        }

        public init(message: [[String: Any]], status: Bool) {
            self.message = message

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode([[String: Any]].self, forKey: .message)

            status = try container.decode(Bool.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
