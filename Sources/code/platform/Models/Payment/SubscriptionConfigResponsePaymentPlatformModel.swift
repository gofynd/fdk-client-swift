

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: SubscriptionConfigResponse
         Used By: Payment
     */

    class SubscriptionConfigResponse: Codable {
        public var success: Bool

        public var config: [String: Any]

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case success

            case config

            case aggregator
        }

        public init(aggregator: String, config: [String: Any], success: Bool) {
            self.success = success

            self.config = config

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            config = try container.decode([String: Any].self, forKey: .config)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(config, forKey: .config)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: SubscriptionConfigResponse
         Used By: Payment
     */

    class SubscriptionConfigResponse: Codable {
        public var success: Bool

        public var config: [String: Any]

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case success

            case config

            case aggregator
        }

        public init(aggregator: String, config: [String: Any], success: Bool) {
            self.success = success

            self.config = config

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            config = try container.decode([String: Any].self, forKey: .config)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(config, forKey: .config)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
