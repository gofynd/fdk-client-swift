

import Foundation
public extension PlatformClient {
    /*
         Model: OrderListingResponse
         Used By: Orders
     */

    class OrderListingResponse: Codable {
        public var page: [String: Any]

        public var totalCount: Int

        public var message: String?

        public var items: [[String: Any]]

        public var lane: String

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case page

            case totalCount = "total_count"

            case message

            case items

            case lane

            case success
        }

        public init(items: [[String: Any]], lane: String, message: String? = nil, page: [String: Any], success: Bool, totalCount: Int) {
            self.page = page

            self.totalCount = totalCount

            self.message = message

            self.items = items

            self.lane = lane

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode([String: Any].self, forKey: .page)

            totalCount = try container.decode(Int.self, forKey: .totalCount)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([[String: Any]].self, forKey: .items)

            lane = try container.decode(String.self, forKey: .lane)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
