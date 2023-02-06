

import Foundation
public extension PlatformClient {
    /*
         Model: GetActivityStatus
         Used By: Order
     */

    class GetActivityStatus: Codable {
        public var activityHistory: ActivityHistory

        public enum CodingKeys: String, CodingKey {
            case activityHistory = "activity_history"
        }

        public init(activityHistory: ActivityHistory) {
            self.activityHistory = activityHistory
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            activityHistory = try container.decode(ActivityHistory.self, forKey: .activityHistory)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(activityHistory, forKey: .activityHistory)
        }
    }
}
