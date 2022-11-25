

import Foundation
public extension PlatformClient {
    /*
         Model: OrderListingResponse
         Used By: Order
     */

    class OrderListingResponse: Codable {
        public var totalCount: Int

        public var items: [[String: Any]]

        public var lane: String

        public var success: Bool

        public var page: [String: Any]

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case totalCount = "total_count"

            case items

            case lane

            case success

            case page

            case message
        }

        public init(items: [[String: Any]], lane: String, message: String? = nil, page: [String: Any], success: Bool, totalCount: Int) {
            self.totalCount = totalCount

            self.items = items

            self.lane = lane

            self.success = success

            self.page = page

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalCount = try container.decode(Int.self, forKey: .totalCount)

            items = try container.decode([[String: Any]].self, forKey: .items)

            lane = try container.decode(String.self, forKey: .lane)

            success = try container.decode(Bool.self, forKey: .success)

            page = try container.decode([String: Any].self, forKey: .page)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
