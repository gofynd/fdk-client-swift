

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryExportFilter
         Used By: Catalog
     */

    class InventoryExportFilter: Codable {
        public var fromDate: String?

        public var brandIds: [Int]?

        public var storeIds: [Int]?

        public var toDate: String?

        public var quantity: InventoryExportQuantityFilter?

        public enum CodingKeys: String, CodingKey {
            case fromDate = "from_date"

            case brandIds = "brand_ids"

            case storeIds = "store_ids"

            case toDate = "to_date"

            case quantity
        }

        public init(brandIds: [Int]? = nil, fromDate: String? = nil, quantity: InventoryExportQuantityFilter? = nil, storeIds: [Int]? = nil, toDate: String? = nil) {
            self.fromDate = fromDate

            self.brandIds = brandIds

            self.storeIds = storeIds

            self.toDate = toDate

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fromDate = try container.decode(String.self, forKey: .fromDate)

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

            do {
                storeIds = try container.decode([Int].self, forKey: .storeIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fromDate, forKey: .fromDate)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(toDate, forKey: .toDate)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}