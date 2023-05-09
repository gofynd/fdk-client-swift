

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentHistoryResponse
         Used By: Order
     */

    class ShipmentHistoryResponse: Codable {
        public var activityHistory: [HistoryDict]

        public enum CodingKeys: String, CodingKey {
            case activityHistory = "activity_history"
        }

        public init(activityHistory: [HistoryDict]) {
            self.activityHistory = activityHistory
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            activityHistory = try container.decode([HistoryDict].self, forKey: .activityHistory)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(activityHistory, forKey: .activityHistory)
        }
    }
}
