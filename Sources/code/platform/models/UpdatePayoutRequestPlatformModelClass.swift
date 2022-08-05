

import Foundation
public extension PlatformClient {
    /*
         Model: UpdatePayoutRequest
         Used By: Payment
     */

    class UpdatePayoutRequest: Codable {
        public var isActive: Bool

        public var isDefault: Bool

        public var uniqueExternalId: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case isDefault = "is_default"

            case uniqueExternalId = "unique_external_id"
        }

        public init(isActive: Bool, isDefault: Bool, uniqueExternalId: String) {
            self.isActive = isActive

            self.isDefault = isDefault

            self.uniqueExternalId = uniqueExternalId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
        }
    }
}
