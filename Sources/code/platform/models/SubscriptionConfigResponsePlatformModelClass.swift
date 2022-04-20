

import Foundation
public extension PlatformClient {
    /*
         Model: SubscriptionConfigResponse
         Used By: Payment
     */

    class SubscriptionConfigResponse: Codable {
        public var success: Bool

        public var aggregator: String

        public var config: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case success

            case aggregator

            case config
        }

        public init(aggregator: String, config: [String: Any], success: Bool) {
            self.success = success

            self.aggregator = aggregator

            self.config = config
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            config = try container.decode([String: Any].self, forKey: .config)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(config, forKey: .config)
        }
    }
}
