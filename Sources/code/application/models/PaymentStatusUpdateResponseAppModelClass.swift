import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateResponse
         Used By: Payment
     */
    class PaymentStatusUpdateResponse: Codable {
        public var status: String

        public var retry: Bool

        public var aggregatorName: String

        public enum CodingKeys: String, CodingKey {
            case status

            case retry

            case aggregatorName = "aggregator_name"
        }

        public init(aggregatorName: String, retry: Bool, status: String) {
            self.status = status

            self.retry = retry

            self.aggregatorName = aggregatorName
        }

        public func duplicate() -> PaymentStatusUpdateResponse {
            let dict = self.dictionary!
            let copy = PaymentStatusUpdateResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            retry = try container.decode(Bool.self, forKey: .retry)

            aggregatorName = try container.decode(String.self, forKey: .aggregatorName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(retry, forKey: .retry)

            try? container.encodeIfPresent(aggregatorName, forKey: .aggregatorName)
        }
    }
}
