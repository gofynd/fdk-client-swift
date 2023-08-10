

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentGatewayToBeReviewed
         Used By: Payment
     */

    class PaymentGatewayToBeReviewed: Codable {
        public var aggregator: [String]

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case success
        }

        public init(aggregator: [String], success: Bool) {
            self.aggregator = aggregator

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode([String].self, forKey: .aggregator)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentGatewayToBeReviewed
         Used By: Payment
     */

    class PaymentGatewayToBeReviewed: Codable {
        public var aggregator: [String]

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case success
        }

        public init(aggregator: [String], success: Bool) {
            self.aggregator = aggregator

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode([String].self, forKey: .aggregator)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
