

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentGatewayConfig
         Used By: Payment
     */

    class PaymentGatewayConfig: Codable {
        public var configType: String

        public var key: String

        public var isActive: Bool?

        public var merchantSalt: String

        public var secret: String

        public enum CodingKeys: String, CodingKey {
            case configType = "config_type"

            case key

            case isActive = "is_active"

            case merchantSalt = "merchant_salt"

            case secret
        }

        public init(configType: String, isActive: Bool? = nil, key: String, merchantSalt: String, secret: String) {
            self.configType = configType

            self.key = key

            self.isActive = isActive

            self.merchantSalt = merchantSalt

            self.secret = secret
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            configType = try container.decode(String.self, forKey: .configType)

            key = try container.decode(String.self, forKey: .key)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantSalt = try container.decode(String.self, forKey: .merchantSalt)

            secret = try container.decode(String.self, forKey: .secret)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encode(isActive, forKey: .isActive)

            try? container.encodeIfPresent(merchantSalt, forKey: .merchantSalt)

            try? container.encodeIfPresent(secret, forKey: .secret)
        }
    }
}
