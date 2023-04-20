

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: SubscriptionConfigResponse
         Used By: Payment
     */

    class SubscriptionConfigResponse: Codable {
        public var config: [String: Any]

        public var success: Bool

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case config

            case success

            case aggregator
        }

        public init(aggregator: String, config: [String: Any], success: Bool) {
            self.config = config

            self.success = success

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            config = try container.decode([String: Any].self, forKey: .config)

            success = try container.decode(Bool.self, forKey: .success)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(config, forKey: .config)

            try? container.encodeIfPresent(success, forKey: .success)

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
        public var config: [String: Any]

        public var success: Bool

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case config

            case success

            case aggregator
        }

        public init(aggregator: String, config: [String: Any], success: Bool) {
            self.config = config

            self.success = success

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            config = try container.decode([String: Any].self, forKey: .config)

            success = try container.decode(Bool.self, forKey: .success)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(config, forKey: .config)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
