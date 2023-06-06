

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentGatewayConfig
         Used By: Payment
     */

    class PaymentGatewayConfig: Codable {
        public var key: String

        public var isActive: Bool?

        public var merchantSalt: String

        public var configType: String

        public var secret: String

        public enum CodingKeys: String, CodingKey {
            case key

            case isActive = "is_active"

            case merchantSalt = "merchant_salt"

            case configType = "config_type"

            case secret
        }

        public init(configType: String, isActive: Bool? = nil, key: String, merchantSalt: String, secret: String) {
            self.key = key

            self.isActive = isActive

            self.merchantSalt = merchantSalt

            self.configType = configType

            self.secret = secret
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantSalt = try container.decode(String.self, forKey: .merchantSalt)

            configType = try container.decode(String.self, forKey: .configType)

            secret = try container.decode(String.self, forKey: .secret)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encode(isActive, forKey: .isActive)

            try? container.encodeIfPresent(merchantSalt, forKey: .merchantSalt)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(secret, forKey: .secret)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentGatewayConfig
         Used By: Payment
     */

    class PaymentGatewayConfig: Codable {
        public var key: String

        public var isActive: Bool?

        public var merchantSalt: String

        public var configType: String

        public var secret: String

        public enum CodingKeys: String, CodingKey {
            case key

            case isActive = "is_active"

            case merchantSalt = "merchant_salt"

            case configType = "config_type"

            case secret
        }

        public init(configType: String, isActive: Bool? = nil, key: String, merchantSalt: String, secret: String) {
            self.key = key

            self.isActive = isActive

            self.merchantSalt = merchantSalt

            self.configType = configType

            self.secret = secret
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantSalt = try container.decode(String.self, forKey: .merchantSalt)

            configType = try container.decode(String.self, forKey: .configType)

            secret = try container.decode(String.self, forKey: .secret)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encode(isActive, forKey: .isActive)

            try? container.encodeIfPresent(merchantSalt, forKey: .merchantSalt)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encodeIfPresent(secret, forKey: .secret)
        }
    }
}
