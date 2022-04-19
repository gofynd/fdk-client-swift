import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateResponse
         Used By: Payment
     */
    class PaymentStatusUpdateResponse: Codable {
        public var status: String

        public var aggregatorName: String

        public var retry: Bool

        public enum CodingKeys: String, CodingKey {
            case status

            case aggregatorName = "aggregator_name"

            case retry
        }

        public init(aggregatorName: String, retry: Bool, status: String) {
            self.status = status

            self.aggregatorName = aggregatorName

            self.retry = retry
        }

        public func duplicate() -> PaymentStatusUpdateResponse {
            let dict = self.dictionary!
            let copy = PaymentStatusUpdateResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            retry = try container.decode(Bool.self, forKey: .retry)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(retry, forKey: .retry)
        }
    }
}
