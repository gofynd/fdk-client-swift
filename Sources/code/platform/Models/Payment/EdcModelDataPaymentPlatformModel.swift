

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: EdcModelData
         Used By: Payment
     */

    class EdcModelData: Codable {
        public var models: [String]

        public var aggregatorId: Int

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case models

            case aggregatorId = "aggregator_id"

            case aggregator
        }

        public init(aggregator: String, aggregatorId: Int, models: [String]) {
            self.models = models

            self.aggregatorId = aggregatorId

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            models = try container.decode([String].self, forKey: .models)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(models, forKey: .models)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
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

        public var aggregatorId: Int

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case models

            case aggregatorId = "aggregator_id"

            case aggregator
        }

        public init(aggregator: String, aggregatorId: Int, models: [String]) {
            self.models = models

            self.aggregatorId = aggregatorId

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            models = try container.decode([String].self, forKey: .models)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(models, forKey: .models)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
