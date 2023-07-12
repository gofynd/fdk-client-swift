

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestShipmentListing
         Used By: Order
     */

    class ManifestShipmentListing: Codable {
        public var success: Bool

        public var status: Int

        public var totalCount: Int

        public var items: [ManifestItemDetails]?

        public var lane: String?

        public var page: ManifestPageInfo

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case status

            case totalCount = "total_count"

            case items

            case lane

            case page

            case message
        }

        public init(items: [ManifestItemDetails]? = nil, lane: String? = nil, message: String? = nil, page: ManifestPageInfo, status: Int, success: Bool, totalCount: Int) {
            self.success = success

            self.status = status

            self.totalCount = totalCount

            self.items = items

            self.lane = lane

            self.page = page

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            status = try container.decode(Int.self, forKey: .status)

            totalCount = try container.decode(Int.self, forKey: .totalCount)

            do {
                items = try container.decode([ManifestItemDetails].self, forKey: .items)

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

            page = try container.decode(ManifestPageInfo.self, forKey: .page)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ManifestShipmentListing
         Used By: Order
     */

    class ManifestShipmentListing: Codable {
        public var success: Bool

        public var status: Int

        public var totalCount: Int

        public var items: [ManifestItemDetails]?

        public var lane: String?

        public var page: ManifestPageInfo

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case status

            case totalCount = "total_count"

            case items

            case lane

            case page

            case message
        }

        public init(items: [ManifestItemDetails]? = nil, lane: String? = nil, message: String? = nil, page: ManifestPageInfo, status: Int, success: Bool, totalCount: Int) {
            self.success = success

            self.status = status

            self.totalCount = totalCount

            self.items = items

            self.lane = lane

            self.page = page

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            status = try container.decode(Int.self, forKey: .status)

            totalCount = try container.decode(Int.self, forKey: .totalCount)

            do {
                items = try container.decode([ManifestItemDetails].self, forKey: .items)

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

            page = try container.decode(ManifestPageInfo.self, forKey: .page)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
