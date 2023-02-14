

import Foundation
public extension ApplicationClient {
    /*
         Model: AggregatorRoute
         Used By: Payment
     */
    class AggregatorRoute: Codable {
        public var apiLink: String?

        public var paymentFlow: String?

        public var paymentFlowData: String?

        public var data: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case apiLink = "api_link"

            case paymentFlow = "payment_flow"

            case paymentFlowData = "payment_flow_data"

            case data
        }

        public init(apiLink: String? = nil, data: [String: Any]? = nil, paymentFlow: String? = nil, paymentFlowData: String? = nil) {
            self.apiLink = apiLink

            self.paymentFlow = paymentFlow

            self.paymentFlowData = paymentFlowData

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                apiLink = try container.decode(String.self, forKey: .apiLink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentFlow = try container.decode(String.self, forKey: .paymentFlow)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentFlowData = try container.decode(String.self, forKey: .paymentFlowData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(apiLink, forKey: .apiLink)

            try? container.encode(paymentFlow, forKey: .paymentFlow)

            try? container.encode(paymentFlowData, forKey: .paymentFlowData)

            try? container.encode(data, forKey: .data)
        }
    }
}
