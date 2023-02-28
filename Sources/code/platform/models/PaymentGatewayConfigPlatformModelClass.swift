

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentGatewayConfig
         Used By: Payment
     */

    class PaymentGatewayConfig: Codable {
        public var isActive: Bool?

        public var configType: String

        public var merchantSalt: String

        public var secret: String

        public var key: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case configType = "config_type"

            case merchantSalt = "merchant_salt"

            case secret

            case key
        }

        public init(configType: String, isActive: Bool? = nil, key: String, merchantSalt: String, secret: String) {
            self.isActive = isActive

            self.configType = configType

            self.merchantSalt = merchantSalt

            self.secret = secret

            self.key = key
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            configType = try container.decode(String.self, forKey: .configType)

            merchantSalt = try container.decode(String.self, forKey: .merchantSalt)

            secret = try container.decode(String.self, forKey: .secret)

            key = try container.decode(String.self, forKey: .key)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(isActive, forKey: .isActive)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(merchantSalt, forKey: .merchantSalt)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }
}
