

import Foundation
public extension PlatformClient {
    /*
         Model: OrderListingResponse
         Used By: Order
     */

    class OrderListingResponse: Codable {
        public var page: [String: Any]

        public var message: String?

        public var items: [[String: Any]]

        public var success: Bool

        public var totalCount: Int

        public var lane: String

        public enum CodingKeys: String, CodingKey {
            case page

            case message

            case items

            case success

            case totalCount = "total_count"

            case lane
        }

        public init(items: [[String: Any]], lane: String, message: String? = nil, page: [String: Any], success: Bool, totalCount: Int) {
            self.page = page

            self.message = message

            self.items = items

            self.success = success

            self.totalCount = totalCount

            self.lane = lane
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode([String: Any].self, forKey: .page)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([[String: Any]].self, forKey: .items)

            success = try container.decode(Bool.self, forKey: .success)

            totalCount = try container.decode(Int.self, forKey: .totalCount)

            lane = try container.decode(String.self, forKey: .lane)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(lane, forKey: .lane)
        }
    }
}
