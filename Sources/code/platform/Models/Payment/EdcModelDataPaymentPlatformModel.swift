

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: EdcModelData
         Used By: Payment
     */

    class EdcModelData: Codable {
        public var aggregatorId: Int

        public var models: [String]

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case aggregatorId = "aggregator_id"

            case models

            case aggregator
        }

        public init(aggregator: String, aggregatorId: Int, models: [String]) {
            self.aggregatorId = aggregatorId

            self.models = models

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            models = try container.decode([String].self, forKey: .models)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(models, forKey: .models)

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
        public var aggregatorId: Int

        public var models: [String]

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case aggregatorId = "aggregator_id"

            case models

            case aggregator
        }

        public init(aggregator: String, aggregatorId: Int, models: [String]) {
            self.aggregatorId = aggregatorId

            self.models = models

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)

            models = try container.decode([String].self, forKey: .models)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)

            try? container.encodeIfPresent(models, forKey: .models)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
