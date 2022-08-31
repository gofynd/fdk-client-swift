

import Foundation
public extension PlatformClient {
    /*
         Model: CODdata
         Used By: Payment
     */

    class CODdata: Codable {
        public var usages: Int

        public var limit: Int

        public var remaining: Int

        public var isActive: Bool

        public var userId: String

        public enum CodingKeys: String, CodingKey {
            case usages

            case limit

            case remaining

            case isActive = "is_active"

            case userId = "user_id"
        }

        public init(isActive: Bool, limit: Int, remaining: Int, usages: Int, userId: String) {
            self.usages = usages

            self.limit = limit

            self.remaining = remaining

            self.isActive = isActive

            self.userId = userId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            usages = try container.decode(Int.self, forKey: .usages)

            limit = try container.decode(Int.self, forKey: .limit)

            remaining = try container.decode(Int.self, forKey: .remaining)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            userId = try container.decode(String.self, forKey: .userId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(usages, forKey: .usages)

            try? container.encodeIfPresent(limit, forKey: .limit)

            try? container.encodeIfPresent(remaining, forKey: .remaining)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }
}
