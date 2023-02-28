

import Foundation
public extension PlatformClient {
    /*
         Model: EdcModelData
         Used By: Payment
     */

    class EdcModelData: Codable {
        public var aggregator: String

        public var models: [String]

        public var aggregatorId: Int

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case models

            case aggregatorId = "aggregator_id"
        }

        public init(aggregator: String, aggregatorId: Int, models: [String]) {
            self.aggregator = aggregator

            self.models = models

            self.aggregatorId = aggregatorId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            models = try container.decode([String].self, forKey: .models)

            aggregatorId = try container.decode(Int.self, forKey: .aggregatorId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(models, forKey: .models)

            try? container.encodeIfPresent(aggregatorId, forKey: .aggregatorId)
        }
    }
}
