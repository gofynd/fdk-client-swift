

import Foundation
public extension ApplicationClient {
    /*
         Model: CardPaymentGateway
         Used By: Payment
     */
    class CardPaymentGateway: Codable {
        public var api: String?

        public var customerId: String?

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case api

            case customerId = "customer_id"

            case aggregator
        }

        public init(aggregator: String, api: String? = nil, customerId: String? = nil) {
            self.api = api

            self.customerId = customerId

            self.aggregator = aggregator
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
                customerId = try container.decode(String.self, forKey: .customerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(api, forKey: .api)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
