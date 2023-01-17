

import Foundation
public extension ApplicationClient {
    /*
         Model: AggregatorConfigDetail
         Used By: Payment
     */
    class AggregatorConfigDetail: Codable {
        public var api: String?

        public var verifyApi: String?

        public var configType: String

        public var merchantId: String?

        public var merchantKey: String?

        public var userId: String?

        public var secret: String

        public var key: String

        public var sdk: Bool?

        public var pin: String?

        public enum CodingKeys: String, CodingKey {
            case api

            case verifyApi = "verify_api"

            case configType = "config_type"

            case merchantId = "merchant_id"

            case merchantKey = "merchant_key"

            case userId = "user_id"

            case secret

            case key

            case sdk

            case pin
        }

        public init(api: String? = nil, configType: String, key: String, merchantId: String? = nil, merchantKey: String? = nil, pin: String? = nil, sdk: Bool? = nil, secret: String, userId: String? = nil, verifyApi: String? = nil) {
            self.api = api

            self.verifyApi = verifyApi

            self.configType = configType

            self.merchantId = merchantId

            self.merchantKey = merchantKey

            self.userId = userId

            self.secret = secret

            self.key = key

            self.sdk = sdk

            self.pin = pin
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                api = try container.decode(String.self, forKey: .api)

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

            configType = try container.decode(String.self, forKey: .configType)

            do {
                merchantId = try container.decode(String.self, forKey: .merchantId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            secret = try container.decode(String.self, forKey: .secret)

            key = try container.decode(String.self, forKey: .key)

            do {
                sdk = try container.decode(Bool.self, forKey: .sdk)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pin = try container.decode(String.self, forKey: .pin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(api, forKey: .api)

            try? container.encode(verifyApi, forKey: .verifyApi)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encode(merchantId, forKey: .merchantId)

            try? container.encode(merchantKey, forKey: .merchantKey)

            try? container.encode(userId, forKey: .userId)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encode(sdk, forKey: .sdk)

            try? container.encode(pin, forKey: .pin)
        }
    }
}
