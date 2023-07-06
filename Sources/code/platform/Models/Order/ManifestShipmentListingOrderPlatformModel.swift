

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestShipmentListing
         Used By: Order
     */

    class ManifestShipmentListing: Codable {
        public var items: [ManifestItemDetails]?

        public var status: Int

        public var message: String?

        public var totalCount: Int

        public var page: ManifestPageInfo

        public var lane: String?

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case items

            case status

            case message

            case totalCount = "total_count"

            case page

            case lane

            case success
        }

        public init(items: [ManifestItemDetails]? = nil, lane: String? = nil, message: String? = nil, page: ManifestPageInfo, status: Int, success: Bool, totalCount: Int) {
            self.items = items

            self.status = status

            self.message = message

            self.totalCount = totalCount

            self.page = page

            self.lane = lane

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([ManifestItemDetails].self, forKey: .items)

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

            page = try container.decode(ManifestPageInfo.self, forKey: .page)

            do {
                lane = try container.decode(String.self, forKey: .lane)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ManifestShipmentListing
         Used By: Order
     */

    class ManifestShipmentListing: Codable {
        public var items: [ManifestItemDetails]?

        public var status: Int

        public var message: String?

        public var totalCount: Int

        public var page: ManifestPageInfo

        public var lane: String?

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case items

            case status

            case message

            case totalCount = "total_count"

            case page

            case lane

            case success
        }

        public init(items: [ManifestItemDetails]? = nil, lane: String? = nil, message: String? = nil, page: ManifestPageInfo, status: Int, success: Bool, totalCount: Int) {
            self.items = items

            self.status = status

            self.message = message

            self.totalCount = totalCount

            self.page = page

            self.lane = lane

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([ManifestItemDetails].self, forKey: .items)

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

            page = try container.decode(ManifestPageInfo.self, forKey: .page)

            do {
                lane = try container.decode(String.self, forKey: .lane)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(lane, forKey: .lane)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
