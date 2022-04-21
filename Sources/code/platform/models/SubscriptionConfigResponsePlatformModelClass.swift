

import Foundation
public extension PlatformClient {
    /*
         Model: SubscriptionConfigResponse
         Used By: Payment
     */

    class SubscriptionConfigResponse: Codable {
        public var aggregator: String

        public var success: Bool

        public var config: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case success

            case config
        }

        public init(aggregator: String, config: [String: Any], success: Bool) {
            self.aggregator = aggregator

            self.success = success

            self.config = config
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            success = try container.decode(Bool.self, forKey: .success)

            config = try container.decode([String: Any].self, forKey: .config)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(config, forKey: .config)
        }
    }
}
