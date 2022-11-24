

import Foundation
public extension PlatformClient {
    /*
         Model: CODdata
         Used By: Payment
     */

    class CODdata: Codable {
        public var userId: String

        public var isActive: Bool

        public var limit: Int

        public var usages: Int

        public var remainingLimit: Int

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case isActive = "is_active"

            case limit

            case usages

            case remainingLimit = "remaining_limit"
        }

        public init(isActive: Bool, limit: Int, remainingLimit: Int, usages: Int, userId: String) {
            self.userId = userId

            self.isActive = isActive

            self.limit = limit

            self.usages = usages

            self.remainingLimit = remainingLimit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userId = try container.decode(String.self, forKey: .userId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            limit = try container.decode(Int.self, forKey: .limit)

            usages = try container.decode(Int.self, forKey: .usages)

            remainingLimit = try container.decode(Int.self, forKey: .remainingLimit)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(limit, forKey: .limit)

            try? container.encodeIfPresent(usages, forKey: .usages)

            try? container.encodeIfPresent(remainingLimit, forKey: .remainingLimit)
        }
    }
}
