

import Foundation
public extension PlatformClient {
    /*
         Model: CODdata
         Used By: Payment
     */

    class CODdata: Codable {
        public var userId: String

        public var isActive: Bool

        public var usages: Int

        public var remaining: Int

        public var limit: Int

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case isActive = "is_active"

            case usages

            case remaining

            case limit
        }

        public init(isActive: Bool, limit: Int, remaining: Int, usages: Int, userId: String) {
            self.userId = userId

            self.isActive = isActive

            self.usages = usages

            self.remaining = remaining

            self.limit = limit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userId = try container.decode(String.self, forKey: .userId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            usages = try container.decode(Int.self, forKey: .usages)

            remaining = try container.decode(Int.self, forKey: .remaining)

            limit = try container.decode(Int.self, forKey: .limit)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(usages, forKey: .usages)

            try? container.encodeIfPresent(remaining, forKey: .remaining)

            try? container.encodeIfPresent(limit, forKey: .limit)
        }
    }
}
