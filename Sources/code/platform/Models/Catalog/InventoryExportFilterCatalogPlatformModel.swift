

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventoryExportFilter
         Used By: Catalog
     */

    class InventoryExportFilter: Codable {
        public var brandIds: [Int]?

        public var fromDate: String?

        public var quantity: InventoryExportQuantityFilter?

        public var toDate: String?

        public var storeIds: [Int]

        public enum CodingKeys: String, CodingKey {
            case brandIds = "brand_ids"

            case fromDate = "from_date"

            case quantity

            case toDate = "to_date"

            case storeIds = "store_ids"
        }

        public init(brandIds: [Int]? = nil, fromDate: String? = nil, quantity: InventoryExportQuantityFilter? = nil, storeIds: [Int], toDate: String? = nil) {
            self.brandIds = brandIds

            self.fromDate = fromDate

            self.quantity = quantity

            self.toDate = toDate

            self.storeIds = storeIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brandIds = try container.decode([Int].self, forKey: .brandIds)

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
                quantity = try container.decode(InventoryExportQuantityFilter.self, forKey: .quantity)

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

            storeIds = try container.decode([Int].self, forKey: .storeIds)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(fromDate, forKey: .fromDate)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(toDate, forKey: .toDate)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventoryExportFilter
         Used By: Catalog
     */

    class InventoryExportFilter: Codable {
        public var brandIds: [Int]?

        public var fromDate: String?

        public var quantity: InventoryExportQuantityFilter?

        public var toDate: String?

        public var storeIds: [Int]

        public enum CodingKeys: String, CodingKey {
            case brandIds = "brand_ids"

            case fromDate = "from_date"

            case quantity

            case toDate = "to_date"

            case storeIds = "store_ids"
        }

        public init(brandIds: [Int]? = nil, fromDate: String? = nil, quantity: InventoryExportQuantityFilter? = nil, storeIds: [Int], toDate: String? = nil) {
            self.brandIds = brandIds

            self.fromDate = fromDate

            self.quantity = quantity

            self.toDate = toDate

            self.storeIds = storeIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brandIds = try container.decode([Int].self, forKey: .brandIds)

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
                quantity = try container.decode(InventoryExportQuantityFilter.self, forKey: .quantity)

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

            storeIds = try container.decode([Int].self, forKey: .storeIds)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(fromDate, forKey: .fromDate)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(toDate, forKey: .toDate)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
        }
    }
}
