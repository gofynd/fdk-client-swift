

import Foundation
public extension PlatformClient {
    /*
         Model: EdcAggregatorAndModelListResponse
         Used By: Payment
     */

    class EdcAggregatorAndModelListResponse: Codable {
        public var success: Bool

        public var edcModels: [String: Any]

        public var aggregators: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case success

            case edcModels = "edc_models"

            case aggregators
        }

        public init(aggregators: [String: Any], edcModels: [String: Any], success: Bool) {
            self.success = success

            self.edcModels = edcModels

            self.aggregators = aggregators
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            edcModels = try container.decode([String: Any].self, forKey: .edcModels)

            aggregators = try container.decode([String: Any].self, forKey: .aggregators)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(edcModels, forKey: .edcModels)

            try? container.encodeIfPresent(aggregators, forKey: .aggregators)
        }
    }
}
