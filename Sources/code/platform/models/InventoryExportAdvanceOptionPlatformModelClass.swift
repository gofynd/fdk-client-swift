

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryExportAdvanceOption
         Used By: Catalog
     */

    class InventoryExportAdvanceOption: Codable {
        public var type: String

        public var toDate: String?

        public var quantity: InventoryExportQuantityFilter?

        public var notification: Bool?

        public var fromDate: String?

        public var storeIds: [Int]?

        public var brandIds: [Int]?

        public enum CodingKeys: String, CodingKey {
            case type

            case toDate = "to_date"

            case quantity

            case notification

            case fromDate = "from_date"

            case storeIds = "store_ids"

            case brandIds = "brand_ids"
        }

        public init(brandIds: [Int]? = nil, fromDate: String? = nil, notification: Bool? = nil, quantity: InventoryExportQuantityFilter? = nil, storeIds: [Int]? = nil, toDate: String? = nil, type: String) {
            self.type = type

            self.toDate = toDate

            self.quantity = quantity

            self.notification = notification

            self.fromDate = fromDate

            self.storeIds = storeIds

            self.brandIds = brandIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            do {
                toDate = try container.decode(String.self, forKey: .toDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(InventoryExportQuantityFilter.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                notification = try container.decode(Bool.self, forKey: .notification)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fromDate = try container.decode(String.self, forKey: .fromDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeIds = try container.decode([Int].self, forKey: .storeIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandIds = try container.decode([Int].self, forKey: .brandIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encode(toDate, forKey: .toDate)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(notification, forKey: .notification)

            try? container.encode(fromDate, forKey: .fromDate)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)
        }
    }
}
