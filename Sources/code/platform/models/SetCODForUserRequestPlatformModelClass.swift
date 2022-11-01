

import Foundation
public extension PlatformClient {
    /*
         Model: SetCODForUserRequest
         Used By: Payment
     */

    class SetCODForUserRequest: Codable {
        public var isActive: Bool

        public var merchantUserId: String

        public var mobileno: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case merchantUserId = "merchant_user_id"

            case mobileno
        }

        public init(isActive: Bool, merchantUserId: String, mobileno: String) {
            self.isActive = isActive

            self.merchantUserId = merchantUserId

            self.mobileno = mobileno
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            merchantUserId = try container.decode(String.self, forKey: .merchantUserId)

            mobileno = try container.decode(String.self, forKey: .mobileno)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(merchantUserId, forKey: .merchantUserId)

            try? container.encodeIfPresent(mobileno, forKey: .mobileno)
        }
    }
}
