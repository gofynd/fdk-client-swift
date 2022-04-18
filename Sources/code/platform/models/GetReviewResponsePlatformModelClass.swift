import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: GetReviewResponse
         Used By: Feedback
     */

    class GetReviewResponse: Codable {
        public var facets: [ReviewFacet]?

        public var items: [[String: Any]]?

        public var page: Page?

        public var sort: [SortMethod]?

        public enum CodingKeys: String, CodingKey {
            case facets

            case items

            case page

            case sort
        }

        public init(facets: [ReviewFacet]?, items: [[String: Any]]?, page: Page?, sort: [SortMethod]?) {
            self.facets = facets

            self.items = items

            self.page = page

            self.sort = sort
        }

        public func duplicate() -> GetReviewResponse {
            let dict = self.dictionary!
            let copy = GetReviewResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                facets = try container.decode([ReviewFacet].self, forKey: .facets)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([[String: Any]].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                page = try container.decode(Page.self, forKey: .page)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sort = try container.decode([SortMethod].self, forKey: .sort)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(facets, forKey: .facets)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(sort, forKey: .sort)
        }
    }
}
