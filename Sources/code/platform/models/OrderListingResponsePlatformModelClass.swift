

import Foundation
public extension PlatformClient {
    /*
         Model: OrderListingResponse
         Used By: Order
     */

    class OrderListingResponse: Codable {
        public var items: [[String: Any]]

        public var lane: String

        public var totalCount: Int

        public var page: [String: Any]

        public var success: Bool

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case items

            case lane

            case totalCount = "total_count"

            case page

            case success

            case message
        }

        public init(items: [[String: Any]], lane: String, message: String? = nil, page: [String: Any], success: Bool, totalCount: Int) {
            self.items = items

            self.lane = lane

            self.totalCount = totalCount

            self.page = page

            self.success = success

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([[String: Any]].self, forKey: .items)

            lane = try container.decode(String.self, forKey: .lane)

            totalCount = try container.decode(Int.self, forKey: .totalCount)

            page = try container.decode([String: Any].self, forKey: .page)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
