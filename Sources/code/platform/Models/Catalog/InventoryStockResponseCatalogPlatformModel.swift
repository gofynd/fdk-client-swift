

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventoryStockResponse
         Used By: Catalog
     */

    class InventoryStockResponse: Codable {
        public var page: InventoryPage

        public var items: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [[String: Any]]? = nil, page: InventoryPage) {
            self.page = page

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode(InventoryPage.self, forKey: .page)

            do {
                items = try container.decode([[String: Any]].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventoryStockResponse
         Used By: Catalog
     */

    class InventoryStockResponse: Codable {
        public var page: InventoryPage

        public var items: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [[String: Any]]? = nil, page: InventoryPage) {
            self.page = page

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode(InventoryPage.self, forKey: .page)

            do {
                items = try container.decode([[String: Any]].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
