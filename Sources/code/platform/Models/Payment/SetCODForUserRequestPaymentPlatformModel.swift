

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: SetCODForUserRequest
         Used By: Payment
     */

    class SetCODForUserRequest: Codable {
        public var mobileno: String

        public var merchantUserId: String

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case mobileno

            case merchantUserId = "merchant_user_id"

            case isActive = "is_active"
        }

        public init(isActive: Bool, merchantUserId: String, mobileno: String) {
            self.mobileno = mobileno

            self.merchantUserId = merchantUserId

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobileno = try container.decode(String.self, forKey: .mobileno)

            merchantUserId = try container.decode(String.self, forKey: .merchantUserId)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobileno, forKey: .mobileno)

            try? container.encodeIfPresent(merchantUserId, forKey: .merchantUserId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: SetCODForUserRequest
         Used By: Payment
     */

    class SetCODForUserRequest: Codable {
        public var mobileno: String

        public var merchantUserId: String

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case mobileno

            case merchantUserId = "merchant_user_id"

            case isActive = "is_active"
        }

        public init(isActive: Bool, merchantUserId: String, mobileno: String) {
            self.mobileno = mobileno

            self.merchantUserId = merchantUserId

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobileno = try container.decode(String.self, forKey: .mobileno)

            merchantUserId = try container.decode(String.self, forKey: .merchantUserId)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobileno, forKey: .mobileno)

            try? container.encodeIfPresent(merchantUserId, forKey: .merchantUserId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
