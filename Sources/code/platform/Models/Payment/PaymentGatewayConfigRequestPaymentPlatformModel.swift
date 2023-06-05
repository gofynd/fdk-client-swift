

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentGatewayConfigRequest
         Used By: Payment
     */

    class PaymentGatewayConfigRequest: Codable {
        public var appId: String

        public var aggregatorName: PaymentGatewayConfig?

        public var isActive: Bool?

        public enum CodingKeys: String, CodingKey {
            case appId = "app_id"

            case aggregatorName = "aggregator_name"

            case isActive = "is_active"
        }

        public init(aggregatorName: PaymentGatewayConfig? = nil, appId: String, isActive: Bool? = nil) {
            self.appId = appId

            self.aggregatorName = aggregatorName

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            appId = try container.decode(String.self, forKey: .appId)

            do {
                aggregatorName = try container.decode(PaymentGatewayConfig.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(isActive, forKey: .isActive)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentGatewayConfigRequest
         Used By: Payment
     */

    class PaymentGatewayConfigRequest: Codable {
        public var appId: String

        public var aggregatorName: PaymentGatewayConfig?

        public var isActive: Bool?

        public enum CodingKeys: String, CodingKey {
            case appId = "app_id"

            case aggregatorName = "aggregator_name"

            case isActive = "is_active"
        }

        public init(aggregatorName: PaymentGatewayConfig? = nil, appId: String, isActive: Bool? = nil) {
            self.appId = appId

            self.aggregatorName = aggregatorName

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            appId = try container.decode(String.self, forKey: .appId)

            do {
                aggregatorName = try container.decode(PaymentGatewayConfig.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encode(isActive, forKey: .isActive)
        }
    }
}
