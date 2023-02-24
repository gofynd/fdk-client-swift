

import Foundation
public extension PlatformClient {
    /*
         Model: EdcAggregatorListResponse
         Used By: Payment
     */

    class EdcAggregatorListResponse: Codable {
        public var aggregators: [String: Any]

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case aggregators

            case success
        }

        public init(aggregators: [String: Any], success: Bool) {
            self.aggregators = aggregators

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregators = try container.decode([String: Any].self, forKey: .aggregators)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregators, forKey: .aggregators)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
