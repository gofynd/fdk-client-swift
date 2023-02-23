

import Foundation
public extension PlatformClient {
    /*
         Model: EdcAggregatorListResponse
         Used By: Payment
     */

    class EdcAggregatorListResponse: Codable {
        public var success: Bool

        public var aggregators: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case success

            case aggregators
        }

        public init(aggregators: [String: Any], success: Bool) {
            self.success = success

            self.aggregators = aggregators
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            aggregators = try container.decode([String: Any].self, forKey: .aggregators)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(aggregators, forKey: .aggregators)
        }
    }
}
