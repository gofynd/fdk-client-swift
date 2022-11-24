

import Foundation
public extension PlatformClient {
    /*
         Model: OrderListingResponse
         Used By: Orders
     */

    class OrderListingResponse: Codable {
        public var success: Bool

        public var totalCount: Int

        public var page: [String: Any]

        public var items: [[String: Any]]

        public var message: String?

        public var lane: String

        public enum CodingKeys: String, CodingKey {
            case success

            case totalCount = "total_count"

            case page

            case items

            case message

            case lane
        }

        public init(items: [[String: Any]], lane: String, message: String? = nil, page: [String: Any], success: Bool, totalCount: Int) {
            self.success = success

            self.totalCount = totalCount

            self.page = page

            self.items = items

            self.message = message

            self.lane = lane
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            totalCount = try container.decode(Int.self, forKey: .totalCount)

            page = try container.decode([String: Any].self, forKey: .page)

            items = try container.decode([[String: Any]].self, forKey: .items)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lane = try container.decode(String.self, forKey: .lane)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(lane, forKey: .lane)
        }
    }
}
