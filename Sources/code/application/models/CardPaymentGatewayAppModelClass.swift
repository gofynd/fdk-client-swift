

import Foundation
public extension ApplicationClient {
    /*
         Model: CardPaymentGateway
         Used By: Payment
     */
    class CardPaymentGateway: Codable {
        public var aggregator: String

        public var api: String?

        public var customerId: String?

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case api

            case customerId = "customer_id"
        }

        public init(aggregator: String, api: String? = nil, customerId: String? = nil) {
            self.aggregator = aggregator

            self.api = api

            self.customerId = customerId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(api, forKey: .api)

            try? container.encode(customerId, forKey: .customerId)
        }
    }
}
