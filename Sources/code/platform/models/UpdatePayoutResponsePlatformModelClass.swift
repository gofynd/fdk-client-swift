

import Foundation
public extension PlatformClient {
    /*
         Model: UpdatePayoutResponse
         Used By: Payment
     */

    class UpdatePayoutResponse: Codable {
        public var isDefault: Bool

        public var success: Bool

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case isDefault = "is_default"

            case success

            case isActive = "is_active"
        }

        public init(isActive: Bool, isDefault: Bool, success: Bool) {
            self.isDefault = isDefault

            self.success = success

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            success = try container.decode(Bool.self, forKey: .success)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
