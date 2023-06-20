

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentHistoryResponse
         Used By: Order
     */

    class ShipmentHistoryResponse: Codable {
        public var activityHistory: [HistoryDict]

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case activityHistory = "activity_history"

            case success
        }

        public init(activityHistory: [HistoryDict], success: Bool? = nil) {
            self.activityHistory = activityHistory

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            activityHistory = try container.decode([HistoryDict].self, forKey: .activityHistory)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(activityHistory, forKey: .activityHistory)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentHistoryResponse
         Used By: Order
     */

    class ShipmentHistoryResponse: Codable {
        public var activityHistory: [HistoryDict]

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case activityHistory = "activity_history"

            case success
        }

        public init(activityHistory: [HistoryDict], success: Bool? = nil) {
            self.activityHistory = activityHistory

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            activityHistory = try container.decode([HistoryDict].self, forKey: .activityHistory)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(activityHistory, forKey: .activityHistory)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
