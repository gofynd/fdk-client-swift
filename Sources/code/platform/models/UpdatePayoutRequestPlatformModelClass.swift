import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: UpdatePayoutRequest
         Used By: Payment
     */

    class UpdatePayoutRequest: Codable {
        public var isDefault: Bool

        public var uniqueExternalId: String

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case isDefault = "is_default"

            case uniqueExternalId = "unique_external_id"

            case isActive = "is_active"
        }

        public init(isActive: Bool, isDefault: Bool, uniqueExternalId: String) {
            self.isDefault = isDefault

            self.uniqueExternalId = uniqueExternalId

            self.isActive = isActive
        }

        public func duplicate() -> UpdatePayoutRequest {
            let dict = self.dictionary!
            let copy = UpdatePayoutRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
