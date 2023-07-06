

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: EdcModelData
         Used By: Payment
     */

    class EdcModelData: Codable {
        public var models: [String]

        public var aggregator: String

        public var aggregatorId: Int

        public enum CodingKeys: String, CodingKey {
            case models

            case aggregator

            case aggregatorId = "aggregator_id"
        }

        public init(aggregator: String, aggregatorId: Int, models: [String]) {
            self.models = models

            self.aggregator = aggregator

            self.aggregatorId = aggregatorId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            models = try container.decode([String].self, forKey: .models)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(models, forKey: .models)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: EdcModelData
         Used By: Payment
     */

    class EdcModelData: Codable {
        public var models: [String]

        public var aggregator: String

        public var aggregatorId: Int

        public enum CodingKeys: String, CodingKey {
            case models

            case aggregator

            case aggregatorId = "aggregator_id"
        }

        public init(aggregator: String, aggregatorId: Int, models: [String]) {
            self.models = models

            self.aggregator = aggregator

            self.aggregatorId = aggregatorId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            models = try container.decode([String].self, forKey: .models)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(models, forKey: .models)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)
        }
    }
}
