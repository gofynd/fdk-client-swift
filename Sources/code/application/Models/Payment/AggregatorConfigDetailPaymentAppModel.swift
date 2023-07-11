

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: AggregatorConfigDetail
         Used By: Payment
     */
    class AggregatorConfigDetail: Codable {
        public var merchantKey: String?

        public var userId: String?

        public var key: String

        public var pin: String?

        public var configType: String

        public var api: String?

        public var secret: String

        public var sdk: Bool?

        public var merchantId: String?

        public var verifyApi: String?

        public enum CodingKeys: String, CodingKey {
            case merchantKey = "merchant_key"

            case userId = "user_id"

            case key

            case pin

            case configType = "config_type"

            case api

            case secret

            case sdk

            case merchantId = "merchant_id"

            case verifyApi = "verify_api"
        }

        public init(api: String? = nil, configType: String, key: String, merchantId: String? = nil, merchantKey: String? = nil, pin: String? = nil, sdk: Bool? = nil, secret: String, userId: String? = nil, verifyApi: String? = nil) {
            self.merchantKey = merchantKey

            self.userId = userId

            self.key = key

            self.pin = pin

            self.configType = configType

            self.api = api

            self.secret = secret

            self.sdk = sdk

            self.merchantId = merchantId

            self.verifyApi = verifyApi
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                merchantKey = try container.decode(String.self, forKey: .merchantKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(String.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            key = try container.decode(String.self, forKey: .key)

            do {
                pin = try container.decode(String.self, forKey: .pin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            configType = try container.decode(String.self, forKey: .configType)

            do {
                api = try container.decode(String.self, forKey: .api)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            secret = try container.decode(String.self, forKey: .secret)

            do {
                sdk = try container.decode(Bool.self, forKey: .sdk)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantId = try container.decode(String.self, forKey: .merchantId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verifyApi = try container.decode(String.self, forKey: .verifyApi)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(merchantKey, forKey: .merchantKey)

            try? container.encode(userId, forKey: .userId)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encode(pin, forKey: .pin)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encode(api, forKey: .api)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encode(sdk, forKey: .sdk)

            try? container.encode(merchantId, forKey: .merchantId)

            try? container.encode(verifyApi, forKey: .verifyApi)
        }
    }
}
