

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentGatewayConfig
         Used By: Payment
     */

    class PaymentGatewayConfig: Codable {
        public var merchantSalt: String

        public var key: String

        public var secret: String

        public var configType: String

        public var isActive: Bool?

        public enum CodingKeys: String, CodingKey {
            case merchantSalt = "merchant_salt"

            case key

            case secret

            case configType = "config_type"

            case isActive = "is_active"
        }

        public init(configType: String, isActive: Bool? = nil, key: String, merchantSalt: String, secret: String) {
            self.merchantSalt = merchantSalt

            self.key = key

            self.secret = secret

            self.configType = configType

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantSalt = try container.decode(String.self, forKey: .merchantSalt)

            key = try container.decode(String.self, forKey: .key)

            secret = try container.decode(String.self, forKey: .secret)

            configType = try container.decode(String.self, forKey: .configType)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantSalt, forKey: .merchantSalt)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encode(isActive, forKey: .isActive)
        }
    }
}
