

import Foundation
public extension PlatformClient {
    /*
         Model: UserDetails
         Used By: Discount
     */

    class UserDetails: Codable {
        public var username: String

        public var userId: String

        public enum CodingKeys: String, CodingKey {
            case username

            case userId = "user_id"
        }

        public init(username: String, userId: String) {
            self.username = username

            self.userId = userId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            username = try container.decode(String.self, forKey: .username)

            userId = try container.decode(String.self, forKey: .userId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }
}
