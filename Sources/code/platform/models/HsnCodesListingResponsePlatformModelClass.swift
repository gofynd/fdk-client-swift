import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: HsnCodesListingResponse
         Used By: Catalog
     */

    class HsnCodesListingResponse: Codable {
        public var items: [HsnCodesObject]?

        public var page: PageResponse?

        public enum CodingKeys: String, CodingKey {
            case items

            case page
        }

        public init(items: [HsnCodesObject]?, page: PageResponse?) {
            self.items = items

            self.page = page
        }

        public func duplicate() -> HsnCodesListingResponse {
            let dict = self.dictionary!
            let copy = HsnCodesListingResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([HsnCodesObject].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(PageResponse.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }
}
