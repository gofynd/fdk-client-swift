

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: GetStoresViewResponse
         Used By: Serviceability
     */

    class GetStoresViewResponse: Codable {
        public var items: [ItemResponse]?

        public var page: PageResponse

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [ItemResponse]? = nil, page: PageResponse) {
            self.items = items

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([ItemResponse].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode(PageResponse.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: GetStoresViewResponse
         Used By: Serviceability
     */

    class GetStoresViewResponse: Codable {
        public var items: [ItemResponse]?

        public var page: PageResponse

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [ItemResponse]? = nil, page: PageResponse) {
            self.items = items

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([ItemResponse].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            page = try container.decode(PageResponse.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
