

import Foundation
public extension PlatformClient {
    /*
         Model: SetCODForUserRequest
         Used By: Payment
     */

    class SetCODForUserRequest: Codable {
        public var isActive: Bool

        public var mobileno: String

        public var merchantUserId: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case mobileno

            case merchantUserId = "merchant_user_id"
        }

        public init(isActive: Bool, merchantUserId: String, mobileno: String) {
            self.isActive = isActive

            self.mobileno = mobileno

            self.merchantUserId = merchantUserId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            mobileno = try container.decode(String.self, forKey: .mobileno)

            merchantUserId = try container.decode(String.self, forKey: .merchantUserId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(mobileno, forKey: .mobileno)

            try? container.encodeIfPresent(merchantUserId, forKey: .merchantUserId)
        }
    }
}
