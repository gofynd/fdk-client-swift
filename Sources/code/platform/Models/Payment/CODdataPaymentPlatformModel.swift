

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: CODdata
         Used By: Payment
     */

    class CODdata: Codable {
        public var remainingLimit: Int

        public var isActive: Bool

        public var userId: String

        public var limit: Int

        public var usages: Int

        public enum CodingKeys: String, CodingKey {
            case remainingLimit = "remaining_limit"

            case isActive = "is_active"

            case userId = "user_id"

            case limit

            case usages
        }

        public init(isActive: Bool, limit: Int, remainingLimit: Int, usages: Int, userId: String) {
            self.remainingLimit = remainingLimit

            self.isActive = isActive

            self.userId = userId

            self.limit = limit

            self.usages = usages
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            remainingLimit = try container.decode(Int.self, forKey: .remainingLimit)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            userId = try container.decode(String.self, forKey: .userId)

            limit = try container.decode(Int.self, forKey: .limit)

            usages = try container.decode(Int.self, forKey: .usages)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(remainingLimit, forKey: .remainingLimit)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(limit, forKey: .limit)

            try? container.encodeIfPresent(usages, forKey: .usages)
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

        public var isActive: Bool

        public var userId: String

        public var limit: Int

        public var usages: Int

        public enum CodingKeys: String, CodingKey {
            case remainingLimit = "remaining_limit"

            case isActive = "is_active"

            case userId = "user_id"

            case limit

            case usages
        }

        public init(isActive: Bool, limit: Int, remainingLimit: Int, usages: Int, userId: String) {
            self.remainingLimit = remainingLimit

            self.isActive = isActive

            self.userId = userId

            self.limit = limit

            self.usages = usages
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            remainingLimit = try container.decode(Int.self, forKey: .remainingLimit)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            userId = try container.decode(String.self, forKey: .userId)

            limit = try container.decode(Int.self, forKey: .limit)

            usages = try container.decode(Int.self, forKey: .usages)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(remainingLimit, forKey: .remainingLimit)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(limit, forKey: .limit)

            try? container.encodeIfPresent(usages, forKey: .usages)
        }
    }
}
