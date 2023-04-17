

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PostHistoryDict
         Used By: Order
     */

    class PostHistoryDict: Codable {
        public var activityHistory: PostActivityHistory

        public enum CodingKeys: String, CodingKey {
            case activityHistory = "activity_history"
        }

        public init(activityHistory: PostActivityHistory) {
            self.activityHistory = activityHistory
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            activityHistory = try container.decode(PostActivityHistory.self, forKey: .activityHistory)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(activityHistory, forKey: .activityHistory)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PostHistoryDict
         Used By: Order
     */

    class PostHistoryDict: Codable {
        public var activityHistory: PostActivityHistory

        public enum CodingKeys: String, CodingKey {
            case activityHistory = "activity_history"
        }

        public init(activityHistory: PostActivityHistory) {
            self.activityHistory = activityHistory
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            activityHistory = try container.decode(PostActivityHistory.self, forKey: .activityHistory)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(activityHistory, forKey: .activityHistory)
        }
    }
}
