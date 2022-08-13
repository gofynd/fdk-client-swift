

import Foundation
public extension PlatformClient {
    /*
         Model: RestrictedCategoryListResponseSerializer
         Used By: CompanyProfile
     */

    class RestrictedCategoryListResponseSerializer: Codable {
        public var page: Page?

        public var declarationTemplate: [String: Any]?

        public var items: [RestrictedCategoryResponseSerializer]?

        public enum CodingKeys: String, CodingKey {
            case page

            case declarationTemplate = "declaration_template"

            case items
        }

        public init(declarationTemplate: [String: Any]? = nil, items: [RestrictedCategoryResponseSerializer]? = nil, page: Page? = nil) {
            self.page = page

            self.declarationTemplate = declarationTemplate

            self.items = items
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
                declarationTemplate = try container.decode([String: Any].self, forKey: .declarationTemplate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                items = try container.decode([RestrictedCategoryResponseSerializer].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(declarationTemplate, forKey: .declarationTemplate)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
