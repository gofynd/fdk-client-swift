

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderListingResponse
         Used By: Order
     */

    class OrderListingResponse: Codable {
        public var totalCount: Int?

        public var success: Bool?

        public var message: String?

        public var items: [PlatformOrderItems]?

        public var page: Page?

        public var lane: String?

        public enum CodingKeys: String, CodingKey {
            case totalCount = "total_count"

            case success

            case message

            case items

            case page

            case lane
        }

        public init(items: [PlatformOrderItems]? = nil, lane: String? = nil, message: String? = nil, page: Page? = nil, success: Bool? = nil, totalCount: Int? = nil) {
            self.totalCount = totalCount

            self.success = success

            self.message = message

            self.items = items

            self.page = page

            self.lane = lane
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                totalCount = try container.decode(Int.self, forKey: .totalCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([PlatformOrderItems].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lane = try container.decode(String.self, forKey: .lane)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(lane, forKey: .lane)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderListingResponse
         Used By: Order
     */

    class OrderListingResponse: Codable {
        public var totalCount: Int?

        public var success: Bool?

        public var message: String?

        public var items: [PlatformOrderItems]?

        public var page: Page?

        public var lane: String?

        public enum CodingKeys: String, CodingKey {
            case totalCount = "total_count"

            case success

            case message

            case items

            case page

            case lane
        }

        public init(items: [PlatformOrderItems]? = nil, lane: String? = nil, message: String? = nil, page: Page? = nil, success: Bool? = nil, totalCount: Int? = nil) {
            self.totalCount = totalCount

            self.success = success

            self.message = message

            self.items = items

            self.page = page

            self.lane = lane
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                totalCount = try container.decode(Int.self, forKey: .totalCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([PlatformOrderItems].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lane = try container.decode(String.self, forKey: .lane)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(lane, forKey: .lane)
        }
    }
}
