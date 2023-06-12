

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: UpdatePayoutRequest
         Used By: Payment
     */

    class UpdatePayoutRequest: Codable {
        public var uniqueExternalId: String

        public var isDefault: Bool

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case uniqueExternalId = "unique_external_id"

            case isDefault = "is_default"

            case isActive = "is_active"
        }

        public init(isActive: Bool, isDefault: Bool, uniqueExternalId: String) {
            self.uniqueExternalId = uniqueExternalId

            self.isDefault = isDefault

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: UpdatePayoutRequest
         Used By: Payment
     */

    class UpdatePayoutRequest: Codable {
        public var uniqueExternalId: String

        public var isDefault: Bool

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case uniqueExternalId = "unique_external_id"

            case isDefault = "is_default"

            case isActive = "is_active"
        }

        public init(isActive: Bool, isDefault: Bool, uniqueExternalId: String) {
            self.uniqueExternalId = uniqueExternalId

            self.isDefault = isDefault

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
