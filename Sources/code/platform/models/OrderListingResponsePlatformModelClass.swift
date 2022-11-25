

import Foundation
public extension PlatformClient {
    /*
         Model: OrderListingResponse
         Used By: Order
     */

    class OrderListingResponse: Codable {
        public var lane: String

        public var message: String?

        public var items: [[String: Any]]

        public var success: Bool

        public var page: [String: Any]

        public var totalCount: Int

        public enum CodingKeys: String, CodingKey {
            case lane

            case message

            case items

            case success

            case page

            case totalCount = "total_count"
        }

        public init(items: [[String: Any]], lane: String, message: String? = nil, page: [String: Any], success: Bool, totalCount: Int) {
            self.lane = lane

            self.message = message

            self.items = items

            self.success = success

            self.page = page

            self.totalCount = totalCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            lane = try container.decode(String.self, forKey: .lane)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            items = try container.decode([[String: Any]].self, forKey: .items)

            success = try container.decode(Bool.self, forKey: .success)

            page = try container.decode([String: Any].self, forKey: .page)

            totalCount = try container.decode(Int.self, forKey: .totalCount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)
        }
    }
}
