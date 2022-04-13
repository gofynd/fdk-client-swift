import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: GetFollowListingResponse
         Used By: Catalog
     */
    class GetFollowListingResponse: Codable {
        public var page: Page

        public var items: [ProductListingDetail]

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [ProductListingDetail], page: Page) {
            self.page = page

            self.items = items
        }

        public func duplicate() -> GetFollowListingResponse {
            let dict = self.dictionary!
            let copy = GetFollowListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode(Page.self, forKey: .page)

            items = try container.decode([ProductListingDetail].self, forKey: .items)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
