

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateResponse
         Used By: Payment
     */
    class PaymentStatusUpdateResponse: Codable {
        public var retry: Bool

        public var status: String

        public var aggregatorName: String

        public enum CodingKeys: String, CodingKey {
            case retry

            case status

            case aggregatorName = "aggregator_name"
        }

        public init(aggregatorName: String, retry: Bool, status: String) {
            self.retry = retry

            self.status = status

            self.aggregatorName = aggregatorName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            retry = try container.decode(Bool.self, forKey: .retry)

            status = try container.decode(String.self, forKey: .status)

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(retry, forKey: .retry)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
        }
    }
}
