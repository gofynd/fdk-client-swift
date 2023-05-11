

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: HomeListingResponse
         Used By: Catalog
     */
    class HomeListingResponse: Codable {
        public var page: Page

        public var message: String?

        public var items: [ProductListingDetail]?

        public enum CodingKeys: String, CodingKey {
            case page

            case message

            case items
        }

        public init(items: [ProductListingDetail]? = nil, message: String? = nil, page: Page) {
            self.page = page

            self.message = message

            self.items = items
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode(Page.self, forKey: .page)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([ProductListingDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
