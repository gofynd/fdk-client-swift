

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: SetCODForUserRequest
         Used By: Payment
     */

    class SetCODForUserRequest: Codable {
        public var merchantUserId: String

        public var isActive: Bool

        public var mobileno: String

        public enum CodingKeys: String, CodingKey {
            case merchantUserId = "merchant_user_id"

            case isActive = "is_active"

            case mobileno
        }

        public init(isActive: Bool, merchantUserId: String, mobileno: String) {
            self.merchantUserId = merchantUserId

            self.isActive = isActive

            self.mobileno = mobileno
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantUserId = try container.decode(String.self, forKey: .merchantUserId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            mobileno = try container.decode(String.self, forKey: .mobileno)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantUserId, forKey: .merchantUserId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(mobileno, forKey: .mobileno)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: SetCODForUserRequest
         Used By: Payment
     */

    class SetCODForUserRequest: Codable {
        public var merchantUserId: String

        public var isActive: Bool

        public var mobileno: String

        public enum CodingKeys: String, CodingKey {
            case merchantUserId = "merchant_user_id"

            case isActive = "is_active"

            case mobileno
        }

        public init(isActive: Bool, merchantUserId: String, mobileno: String) {
            self.merchantUserId = merchantUserId

            self.isActive = isActive

            self.mobileno = mobileno
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantUserId = try container.decode(String.self, forKey: .merchantUserId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            mobileno = try container.decode(String.self, forKey: .mobileno)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantUserId, forKey: .merchantUserId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(mobileno, forKey: .mobileno)
        }
    }
}
