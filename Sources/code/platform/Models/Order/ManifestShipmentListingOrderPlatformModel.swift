

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestShipmentListing
         Used By: Order
     */

    class ManifestShipmentListing: Codable {
        public var lane: String?

        public var status: Int

        public var message: String?

        public var totalCount: Int

        public var items: [ManifestItemDetails]?

        public var success: Bool

        public var page: ManifestPageInfo

        public enum CodingKeys: String, CodingKey {
            case lane

            case status

            case message

            case totalCount = "total_count"

            case items

            case success

            case page
        }

        public init(items: [ManifestItemDetails]? = nil, lane: String? = nil, message: String? = nil, page: ManifestPageInfo, status: Int, success: Bool, totalCount: Int) {
            self.lane = lane

            self.status = status

            self.message = message

            self.totalCount = totalCount

            self.items = items

            self.success = success

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                lane = try container.decode(String.self, forKey: .lane)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Int.self, forKey: .status)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalCount = try container.decode(Int.self, forKey: .totalCount)

            do {
                items = try container.decode([ManifestItemDetails].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            page = try container.decode(ManifestPageInfo.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ManifestShipmentListing
         Used By: Order
     */

    class ManifestShipmentListing: Codable {
        public var lane: String?

        public var status: Int

        public var message: String?

        public var totalCount: Int

        public var items: [ManifestItemDetails]?

        public var success: Bool

        public var page: ManifestPageInfo

        public enum CodingKeys: String, CodingKey {
            case lane

            case status

            case message

            case totalCount = "total_count"

            case items

            case success

            case page
        }

        public init(items: [ManifestItemDetails]? = nil, lane: String? = nil, message: String? = nil, page: ManifestPageInfo, status: Int, success: Bool, totalCount: Int) {
            self.lane = lane

            self.status = status

            self.message = message

            self.totalCount = totalCount

            self.items = items

            self.success = success

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                lane = try container.decode(String.self, forKey: .lane)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            status = try container.decode(Int.self, forKey: .status)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalCount = try container.decode(Int.self, forKey: .totalCount)

            do {
                items = try container.decode([ManifestItemDetails].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            page = try container.decode(ManifestPageInfo.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
