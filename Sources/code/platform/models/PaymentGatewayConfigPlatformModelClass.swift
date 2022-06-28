

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentGatewayConfig
         Used By: Payment
     */

    class PaymentGatewayConfig: Codable {
        public var merchantSalt: String

        public var isActive: Bool?

        public var configType: String

        public var secret: String

        public var key: String

        public enum CodingKeys: String, CodingKey {
            case merchantSalt = "merchant_salt"

            case isActive = "is_active"

            case configType = "config_type"

            case secret

            case key
        }

        public init(configType: String, isActive: Bool? = nil, key: String, merchantSalt: String, secret: String) {
            self.merchantSalt = merchantSalt

            self.isActive = isActive

            self.configType = configType

            self.secret = secret

            self.key = key
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantSalt = try container.decode(String.self, forKey: .merchantSalt)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            configType = try container.decode(String.self, forKey: .configType)

            secret = try container.decode(String.self, forKey: .secret)

            key = try container.decode(String.self, forKey: .key)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantSalt, forKey: .merchantSalt)

            try? container.encode(isActive, forKey: .isActive)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }
}
