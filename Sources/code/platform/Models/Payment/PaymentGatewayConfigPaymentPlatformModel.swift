

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentGatewayConfig
         Used By: Payment
     */

    class PaymentGatewayConfig: Codable {
        public var configType: String

        public var isActive: Bool?

        public var key: String

        public var merchantSalt: String

        public var secret: String

        public enum CodingKeys: String, CodingKey {
            case configType = "config_type"

            case isActive = "is_active"

            case key

            case merchantSalt = "merchant_salt"

            case secret
        }

        public init(configType: String, isActive: Bool? = nil, key: String, merchantSalt: String, secret: String) {
            self.configType = configType

            self.isActive = isActive

            self.key = key

            self.merchantSalt = merchantSalt

            self.secret = secret
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            configType = try container.decode(String.self, forKey: .configType)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            key = try container.decode(String.self, forKey: .key)

            merchantSalt = try container.decode(String.self, forKey: .merchantSalt)

            secret = try container.decode(String.self, forKey: .secret)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encode(isActive, forKey: .isActive)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(merchantSalt, forKey: .merchantSalt)

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
        public var configType: String

        public var isActive: Bool?

        public var key: String

        public var merchantSalt: String

        public var secret: String

        public enum CodingKeys: String, CodingKey {
            case configType = "config_type"

            case isActive = "is_active"

            case key

            case merchantSalt = "merchant_salt"

            case secret
        }

        public init(configType: String, isActive: Bool? = nil, key: String, merchantSalt: String, secret: String) {
            self.configType = configType

            self.isActive = isActive

            self.key = key

            self.merchantSalt = merchantSalt

            self.secret = secret
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            configType = try container.decode(String.self, forKey: .configType)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            key = try container.decode(String.self, forKey: .key)

            merchantSalt = try container.decode(String.self, forKey: .merchantSalt)

            secret = try container.decode(String.self, forKey: .secret)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encode(isActive, forKey: .isActive)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(merchantSalt, forKey: .merchantSalt)

            try? container.encodeIfPresent(secret, forKey: .secret)
        }
    }
}
