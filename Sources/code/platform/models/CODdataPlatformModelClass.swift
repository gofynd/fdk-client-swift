

import Foundation
public extension PlatformClient {
    /*
         Model: CODdata
         Used By: Payment
     */

    class CODdata: Codable {
        public var remaining: Int

        public var limit: Int

        public var usages: Int

        public var userId: String

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case remaining

            case limit

            case usages

            case userId = "user_id"

            case isActive = "is_active"
        }

        public init(isActive: Bool, limit: Int, remaining: Int, usages: Int, userId: String) {
            self.remaining = remaining

            self.limit = limit

            self.usages = usages

            self.userId = userId

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            remaining = try container.decode(Int.self, forKey: .remaining)

            limit = try container.decode(Int.self, forKey: .limit)

            usages = try container.decode(Int.self, forKey: .usages)

            userId = try container.decode(String.self, forKey: .userId)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(remaining, forKey: .remaining)

            try? container.encodeIfPresent(limit, forKey: .limit)

            try? container.encodeIfPresent(usages, forKey: .usages)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
