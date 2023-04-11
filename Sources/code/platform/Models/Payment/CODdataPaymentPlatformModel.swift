

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: CODdata
         Used By: Payment
     */

    class CODdata: Codable {
        public var remainingLimit: Int

        public var userId: String

        public var usages: Int

        public var limit: Int

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case remainingLimit = "remaining_limit"

            case userId = "user_id"

            case usages

            case limit

            case isActive = "is_active"
        }

        public init(isActive: Bool, limit: Int, remainingLimit: Int, usages: Int, userId: String) {
            self.remainingLimit = remainingLimit

            self.userId = userId

            self.usages = usages

            self.limit = limit

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            remainingLimit = try container.decode(Int.self, forKey: .remainingLimit)

            userId = try container.decode(String.self, forKey: .userId)

            usages = try container.decode(Int.self, forKey: .usages)

            limit = try container.decode(Int.self, forKey: .limit)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(remainingLimit, forKey: .remainingLimit)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(usages, forKey: .usages)

            try? container.encodeIfPresent(limit, forKey: .limit)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: CODdata
         Used By: Payment
     */

    class CODdata: Codable {
        public var remainingLimit: Int

        public var userId: String

        public var usages: Int

        public var limit: Int

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case remainingLimit = "remaining_limit"

            case userId = "user_id"

            case usages

            case limit

            case isActive = "is_active"
        }

        public init(isActive: Bool, limit: Int, remainingLimit: Int, usages: Int, userId: String) {
            self.remainingLimit = remainingLimit

            self.userId = userId

            self.usages = usages

            self.limit = limit

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            remainingLimit = try container.decode(Int.self, forKey: .remainingLimit)

            userId = try container.decode(String.self, forKey: .userId)

            usages = try container.decode(Int.self, forKey: .usages)

            limit = try container.decode(Int.self, forKey: .limit)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(remainingLimit, forKey: .remainingLimit)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(usages, forKey: .usages)

            try? container.encodeIfPresent(limit, forKey: .limit)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
