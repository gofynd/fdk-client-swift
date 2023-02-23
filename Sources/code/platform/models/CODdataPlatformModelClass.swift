

import Foundation
public extension PlatformClient {
    /*
         Model: CODdata
         Used By: Payment
     */

    class CODdata: Codable {
        public var isActive: Bool

        public var limit: Int

        public var remainingLimit: Int

        public var usages: Int

        public var userId: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case limit

            case remainingLimit = "remaining_limit"

            case usages

            case userId = "user_id"
        }

        public init(isActive: Bool, limit: Int, remainingLimit: Int, usages: Int, userId: String) {
            self.isActive = isActive

            self.limit = limit

            self.remainingLimit = remainingLimit

            self.usages = usages

            self.userId = userId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            limit = try container.decode(Int.self, forKey: .limit)

            remainingLimit = try container.decode(Int.self, forKey: .remainingLimit)

            usages = try container.decode(Int.self, forKey: .usages)

            userId = try container.decode(String.self, forKey: .userId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(limit, forKey: .limit)

            try? container.encodeIfPresent(remainingLimit, forKey: .remainingLimit)

            try? container.encodeIfPresent(usages, forKey: .usages)

            try? container.encodeIfPresent(userId, forKey: .userId)
        }
    }
}
