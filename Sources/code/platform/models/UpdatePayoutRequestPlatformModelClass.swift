

import Foundation
public extension PlatformClient {
    /*
         Model: UpdatePayoutRequest
         Used By: Payment
     */

    class UpdatePayoutRequest: Codable {
        public var uniqueExternalId: String

        public var isActive: Bool

        public var isDefault: Bool

        public enum CodingKeys: String, CodingKey {
            case uniqueExternalId = "unique_external_id"

            case isActive = "is_active"

            case isDefault = "is_default"
        }

        public init(isActive: Bool, isDefault: Bool, uniqueExternalId: String) {
            self.uniqueExternalId = uniqueExternalId

            self.isActive = isActive

            self.isDefault = isDefault
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
        }
    }
}
