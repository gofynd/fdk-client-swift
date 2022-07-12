

import Foundation
public extension ApplicationClient {
    /*
         Model: CardPaymentGateway
         Used By: Payment
     */
    class CardPaymentGateway: Codable {
        public var aggregator: String

        public var customerId: String?

        public var api: String?

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case customerId = "customer_id"

            case api
        }

        public init(aggregator: String, api: String? = nil, customerId: String? = nil) {
            self.aggregator = aggregator

            self.customerId = customerId

            self.api = api
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            do {
                customerId = try container.decode(String.self, forKey: .customerId)

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

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encode(api, forKey: .api)
        }
    }
}
