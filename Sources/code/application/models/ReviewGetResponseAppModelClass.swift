

import Foundation
public extension ApplicationClient {
    /*
         Model: ReviewGetResponse
         Used By: Feedback
     */
    class ReviewGetResponse: Codable {
        public var facets: [ReviewFacet]?

        public var items: [CustomerReview]?

        public var page: Page?

        public var sort: [SortMethod]?

        public enum CodingKeys: String, CodingKey {
            case facets

            case items

            case page

            case sort
        }

        public init(facets: [ReviewFacet]? = nil, items: [CustomerReview]? = nil, page: Page? = nil, sort: [SortMethod]? = nil) {
            self.facets = facets

            self.items = items

            self.page = page

            self.sort = sort
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
                items = try container.decode([CustomerReview].self, forKey: .items)

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
