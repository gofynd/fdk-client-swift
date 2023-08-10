

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: UpdateUserCartMapping
         Used By: Cart
     */

    class UpdateUserCartMapping: Codable {
        public var userId: String

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"
        }

        public init(userId: String) {
            self.userId = userId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userId = try container.decode(String.self, forKey: .userId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }
}
