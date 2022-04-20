import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyStoreView_Response
         Used By: Serviceability
     */

    class CompanyStoreView_Response: Codable {
        public var page: [CompanyStoreView_PageItems]

        public var items: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items
        }

        public init(items: [[String: Any]]? = nil, page: [CompanyStoreView_PageItems]) {
            self.page = page

            self.items = items
        }

        public func duplicate() -> CompanyStoreView_Response {
            let dict = self.dictionary!
            let copy = CompanyStoreView_Response(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            page = try container.decode([CompanyStoreView_PageItems].self, forKey: .page)

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
