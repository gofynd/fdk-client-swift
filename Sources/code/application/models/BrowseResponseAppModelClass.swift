

import Foundation
public extension ApplicationClient {
    /*
         Model: BrowseResponse
         Used By: FileStorage
     */
    class BrowseResponse: Codable {
        public var items: [DbRecord]

        public var page: Page

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [DbRecord], page: Page) {
            self.items = items

            self.page = page
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([DbRecord].self, forKey: .items)

            page = try container.decode(Page.self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
