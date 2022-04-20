

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentUpdateRequest
         Used By: Order
     */

    class ShipmentUpdateRequest: Codable {
        public var bags: [String]

        public var reason: [String: Any]

        public var comments: String

        public var action: String

        public enum CodingKeys: String, CodingKey {
            case bags

            case reason

            case comments

            case action
        }

        public init(action: String, bags: [String], comments: String, reason: [String: Any]) {
            self.bags = bags

            self.reason = reason

            self.comments = comments

            self.action = action
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bags = try container.decode([String].self, forKey: .bags)

            reason = try container.decode([String: Any].self, forKey: .reason)

            comments = try container.decode(String.self, forKey: .comments)

            action = try container.decode(String.self, forKey: .action)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(reason, forKey: .reason)

            try? container.encodeIfPresent(comments, forKey: .comments)

            try? container.encodeIfPresent(action, forKey: .action)
        }
    }
}
