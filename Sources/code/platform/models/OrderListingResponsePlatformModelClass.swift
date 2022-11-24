

import Foundation
public extension PlatformClient {
    /*
         Model: OrderListingResponse
         Used By: Order
     */

    class OrderListingResponse: Codable {
        public var totalCount: Int

        public var items: [[String: Any]]

        public var success: Bool

        public var message: String?

        public var lane: String

        public var page: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case totalCount = "total_count"

            case items

            case success

            case message

            case lane

            case page
        }

        public init(items: [[String: Any]], lane: String, message: String? = nil, page: [String: Any], success: Bool, totalCount: Int) {
            self.totalCount = totalCount

            self.items = items

            self.success = success

            self.message = message

            self.lane = lane

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalCount = try container.decode(Int.self, forKey: .totalCount)

            items = try container.decode([[String: Any]].self, forKey: .items)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lane = try container.decode(String.self, forKey: .lane)

            page = try container.decode([String: Any].self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
