

import Foundation
public extension PlatformClient {
    /*
         Model: SubscriptionPaymentMethodResponse
         Used By: Payment
     */

    class SubscriptionPaymentMethodResponse: Codable {
        public var data: [[String: Any]]

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case data

            case success
        }

        public init(data: [[String: Any]], success: Bool) {
            self.data = data

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([[String: Any]].self, forKey: .data)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
