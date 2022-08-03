

import Foundation
public extension PlatformClient {
    /*
         Model: RestrictedCategoryListResponseSerializer
         Used By: CompanyProfile
     */

    class RestrictedCategoryListResponseSerializer: Codable {
        public var page: Page?

        public var items: [RestrictedCategoryResponseSerializer]?

        public var declarationTemplate: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case page

            case items

            case declarationTemplate = "declaration_template"
        }

        public init(declarationTemplate: [String: Any]? = nil, items: [RestrictedCategoryResponseSerializer]? = nil, page: Page? = nil) {
            self.page = page

            self.items = items

            self.declarationTemplate = declarationTemplate
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
                items = try container.decode([RestrictedCategoryResponseSerializer].self, forKey: .items)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(declarationTemplate, forKey: .declarationTemplate)
        }
    }
}
