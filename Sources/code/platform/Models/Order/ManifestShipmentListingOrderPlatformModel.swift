

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestShipmentListing
         Used By: Order
     */

    class ManifestShipmentListing: Codable {
        public var message: String?

        public var success: Bool

        public var totalCount: Int

        public var status: Int

        public var lane: String?

        public var page: ManifestPageInfo

        public var items: [ManifestItemDetails]?

        public enum CodingKeys: String, CodingKey {
            case message

            case success

            case totalCount = "total_count"

            case status

            case lane

            case page

            case items
        }

        public init(items: [ManifestItemDetails]? = nil, lane: String? = nil, message: String? = nil, page: ManifestPageInfo, status: Int, success: Bool, totalCount: Int) {
            self.message = message

            self.success = success

            self.totalCount = totalCount

            self.status = status

            self.lane = lane

            self.page = page

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            totalCount = try container.decode(Int.self, forKey: .totalCount)

            status = try container.decode(Int.self, forKey: .status)

            do {
                lane = try container.decode(String.self, forKey: .lane)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode(ManifestPageInfo.self, forKey: .page)

            do {
                items = try container.decode([ManifestItemDetails].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ManifestShipmentListing
         Used By: Order
     */

    class ManifestShipmentListing: Codable {
        public var message: String?

        public var success: Bool

        public var totalCount: Int

        public var status: Int

        public var lane: String?

        public var page: ManifestPageInfo

        public var items: [ManifestItemDetails]?

        public enum CodingKeys: String, CodingKey {
            case message

            case success

            case totalCount = "total_count"

            case status

            case lane

            case page

            case items
        }

        public init(items: [ManifestItemDetails]? = nil, lane: String? = nil, message: String? = nil, page: ManifestPageInfo, status: Int, success: Bool, totalCount: Int) {
            self.message = message

            self.success = success

            self.totalCount = totalCount

            self.status = status

            self.lane = lane

            self.page = page

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            totalCount = try container.decode(Int.self, forKey: .totalCount)

            status = try container.decode(Int.self, forKey: .status)

            do {
                lane = try container.decode(String.self, forKey: .lane)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode(ManifestPageInfo.self, forKey: .page)

            do {
                items = try container.decode([ManifestItemDetails].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
