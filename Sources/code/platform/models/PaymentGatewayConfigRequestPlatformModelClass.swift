

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentGatewayConfigRequest
         Used By: Payment
     */

    class PaymentGatewayConfigRequest: Codable {
        public var isActive: Bool?

        public var aggregatorName: PaymentGatewayConfig?

        public var appId: String

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case aggregatorName = "aggregator_name"

            case appId = "app_id"
        }

        public init(aggregatorName: PaymentGatewayConfig? = nil, appId: String, isActive: Bool? = nil) {
            self.isActive = isActive

            self.aggregatorName = aggregatorName

            self.appId = appId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorName = try container.decode(PaymentGatewayConfig.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(isActive, forKey: .isActive)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(appId, forKey: .appId)
        }
    }
}
