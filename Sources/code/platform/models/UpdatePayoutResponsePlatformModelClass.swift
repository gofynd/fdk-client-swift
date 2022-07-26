

import Foundation
public extension PlatformClient {
    /*
         Model: UpdatePayoutResponse
         Used By: Payment
     */

    class UpdatePayoutResponse: Codable {
        public var success: Bool

        public var isActive: Bool

        public var isDefault: Bool

        public enum CodingKeys: String, CodingKey {
            case success

            case isActive = "is_active"

            case isDefault = "is_default"
        }

        public init(isActive: Bool, isDefault: Bool, success: Bool) {
            self.success = success

            self.isActive = isActive

            self.isDefault = isDefault
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
        }
    }
}
