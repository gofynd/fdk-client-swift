

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderingStores
         Used By: Configuration
     */
    class OrderingStores: Codable {
        public var page: Page?

        public var items: [OrderingStore]?

        public var deployedStores: [Int]?

        public var allStores: Bool?

        public var enabled: Bool?

        public var type: String?

        public var id: String?

        public var app: String?

        public var v: Int?

        public enum CodingKeys: String, CodingKey {
            case page

            case items

            case deployedStores = "deployed_stores"

            case allStores = "all_stores"

            case enabled

            case type

            case id = "_id"

            case app

            case v = "__v"
        }

        public init(allStores: Bool? = nil, app: String? = nil, deployedStores: [Int]? = nil, enabled: Bool? = nil, items: [OrderingStore]? = nil, page: Page? = nil, type: String? = nil, id: String? = nil, v: Int? = nil) {
            self.page = page

            self.items = items

            self.deployedStores = deployedStores

            self.allStores = allStores

            self.enabled = enabled

            self.type = type

            self.id = id

            self.app = app

            self.v = v
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([OrderingStore].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deployedStores = try container.decode([Int].self, forKey: .deployedStores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allStores = try container.decode(Bool.self, forKey: .allStores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                app = try container.decode(String.self, forKey: .app)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                v = try container.decode(Int.self, forKey: .v)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(deployedStores, forKey: .deployedStores)

            try? container.encodeIfPresent(allStores, forKey: .allStores)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(app, forKey: .app)

            try? container.encodeIfPresent(v, forKey: .v)
        }
    }
}
