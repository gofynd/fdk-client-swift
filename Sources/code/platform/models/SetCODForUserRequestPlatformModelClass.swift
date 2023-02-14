

import Foundation
public extension PlatformClient {
    /*
         Model: SetCODForUserRequest
         Used By: Payment
     */

    class SetCODForUserRequest: Codable {
        public var merchantUserId: String

        public var mobileno: String

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case merchantUserId = "merchant_user_id"

            case mobileno

            case isActive = "is_active"
        }

        public init(isActive: Bool, merchantUserId: String, mobileno: String) {
            self.merchantUserId = merchantUserId

            self.mobileno = mobileno

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantUserId = try container.decode(String.self, forKey: .merchantUserId)

            mobileno = try container.decode(String.self, forKey: .mobileno)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantUserId, forKey: .merchantUserId)

            try? container.encodeIfPresent(mobileno, forKey: .mobileno)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
