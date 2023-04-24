

import Foundation
public extension PlatformClient {
    /*
         Model: PostShipmentHistory
         Used By: Order
     */

    class PostShipmentHistory: Codable {
        public var activityHistory: [PostHistoryDict]?

        public enum CodingKeys: String, CodingKey {
            case activityHistory = "activity_history"
        }

        public init(activityHistory: [PostHistoryDict]? = nil) {
            self.activityHistory = activityHistory
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                activityHistory = try container.decode([PostHistoryDict].self, forKey: .activityHistory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(activityHistory, forKey: .activityHistory)
        }
    }
}
