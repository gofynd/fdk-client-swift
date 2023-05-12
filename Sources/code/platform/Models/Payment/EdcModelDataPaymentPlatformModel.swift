

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: EdcModelData
         Used By: Payment
     */

    class EdcModelData: Codable {
        public var aggregatorId: Int

        public var aggregator: String

        public var models: [String]

        public enum CodingKeys: String, CodingKey {
            case aggregatorId = "aggregator_id"

            case aggregator

            case models
        }

        public init(aggregator: String, aggregatorId: Int, models: [String]) {
            self.aggregatorId = aggregatorId

            self.aggregator = aggregator

            self.models = models
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            models = try container.decode([String].self, forKey: .models)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(models, forKey: .models)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: EdcModelData
         Used By: Payment
     */

    class EdcModelData: Codable {
        public var aggregatorId: Int

        public var aggregator: String

        public var models: [String]

        public enum CodingKeys: String, CodingKey {
            case aggregatorId = "aggregator_id"

            case aggregator

            case models
        }

        public init(aggregator: String, aggregatorId: Int, models: [String]) {
            self.aggregatorId = aggregatorId

            self.aggregator = aggregator

            self.models = models
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            models = try container.decode([String].self, forKey: .models)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(models, forKey: .models)
        }
    }
}
