import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: HomeListingResponse
         Used By: Catalog
     */
    class HomeListingResponse: Codable {
        public var page: Page

        public var items: [ProductListingDetail]?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case page

            case items

            case message
        }

        public init(items: [ProductListingDetail]? = nil, message: String? = nil, page: Page) {
            self.page = page

            self.items = items

            self.message = message
        }

        public func duplicate() -> HomeListingResponse {
            let dict = self.dictionary!
            let copy = HomeListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode(Page.self, forKey: .page)

            do {
                items = try container.decode([ProductListingDetail].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
