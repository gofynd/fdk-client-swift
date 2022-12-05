

import Foundation
public extension PlatformClient {
    /*
         Model: CODdata
         Used By: Payment
     */

    class CODdata: Codable {
        public var usages: Int

        public var isActive: Bool

        public var remainingLimit: Int

        public var userId: String

        public var limit: Int

        public enum CodingKeys: String, CodingKey {
            case usages

            case isActive = "is_active"

            case remainingLimit = "remaining_limit"

            case userId = "user_id"

            case limit
        }

        public init(isActive: Bool, limit: Int, remainingLimit: Int, usages: Int, userId: String) {
            self.usages = usages

            self.isActive = isActive

            self.remainingLimit = remainingLimit

            self.userId = userId

            self.limit = limit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            usages = try container.decode(Int.self, forKey: .usages)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            remainingLimit = try container.decode(Int.self, forKey: .remainingLimit)

            userId = try container.decode(String.self, forKey: .userId)

            limit = try container.decode(Int.self, forKey: .limit)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(usages, forKey: .usages)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(remainingLimit, forKey: .remainingLimit)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(limit, forKey: .limit)
        }
    }
}
