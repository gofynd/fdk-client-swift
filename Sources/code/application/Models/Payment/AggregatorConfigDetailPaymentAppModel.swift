

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: AggregatorConfigDetail
         Used By: Payment
     */
    class AggregatorConfigDetail: Codable {
        public var key: String

        public var sdk: Bool?

        public var merchantId: String?

        public var userId: String?

        public var merchantKey: String?

        public var secret: String

        public var pin: String?

        public var configType: String

        public var verifyApi: String?

        public var api: String?

        public enum CodingKeys: String, CodingKey {
            case key

            case sdk

            case merchantId = "merchant_id"

            case userId = "user_id"

            case merchantKey = "merchant_key"

            case secret

            case pin

            case configType = "config_type"

            case verifyApi = "verify_api"

            case api
        }

        public init(api: String? = nil, configType: String, key: String, merchantId: String? = nil, merchantKey: String? = nil, pin: String? = nil, sdk: Bool? = nil, secret: String, userId: String? = nil, verifyApi: String? = nil) {
            self.key = key

            self.sdk = sdk

            self.merchantId = merchantId

            self.userId = userId

            self.merchantKey = merchantKey

            self.secret = secret

            self.pin = pin

            self.configType = configType

            self.verifyApi = verifyApi

            self.api = api
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

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
                userId = try container.decode(String.self, forKey: .userId)

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

            secret = try container.decode(String.self, forKey: .secret)

            do {
                pin = try container.decode(String.self, forKey: .pin)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            configType = try container.decode(String.self, forKey: .configType)

            do {
                verifyApi = try container.decode(String.self, forKey: .verifyApi)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                api = try container.decode(String.self, forKey: .api)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encode(sdk, forKey: .sdk)

            try? container.encode(merchantId, forKey: .merchantId)

            try? container.encode(userId, forKey: .userId)

            try? container.encode(merchantKey, forKey: .merchantKey)

            try? container.encodeIfPresent(secret, forKey: .secret)

            try? container.encode(pin, forKey: .pin)

            try? container.encodeIfPresent(configType, forKey: .configType)

            try? container.encode(verifyApi, forKey: .verifyApi)

            try? container.encode(api, forKey: .api)
        }
    }
}
