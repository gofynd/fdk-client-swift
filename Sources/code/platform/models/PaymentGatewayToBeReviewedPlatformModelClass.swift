

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentGatewayToBeReviewed
         Used By: Payment
     */

    class PaymentGatewayToBeReviewed: Codable {
        public var success: Bool

        public var aggregator: [String]

        public enum CodingKeys: String, CodingKey {
            case success

            case aggregator
        }

        public init(aggregator: [String], success: Bool) {
            self.success = success

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            aggregator = try container.decode([String].self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
