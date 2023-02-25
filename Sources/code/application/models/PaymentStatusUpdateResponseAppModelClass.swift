

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateResponse
         Used By: Payment
     */
    class PaymentStatusUpdateResponse: Codable {
        public var aggregatorName: String

        public var retry: Bool

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case aggregatorName = "aggregator_name"

            case retry

            case status
        }

        public init(aggregatorName: String, retry: Bool, status: String) {
            self.aggregatorName = aggregatorName

            self.retry = retry

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            retry = try container.decode(Bool.self, forKey: .retry)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(retry, forKey: .retry)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
