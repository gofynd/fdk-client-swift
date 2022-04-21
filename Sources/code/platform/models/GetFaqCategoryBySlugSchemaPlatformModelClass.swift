

import Foundation
public extension PlatformClient {
    /*
         Model: GetFaqCategoryBySlugSchema
         Used By: Content
     */

    class GetFaqCategoryBySlugSchema: Codable {
        public var category: FAQCategorySchema?

        public enum CodingKeys: String, CodingKey {
            case category
        }

        public init(category: FAQCategorySchema? = nil) {
            self.category = category
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                category = try container.decode(FAQCategorySchema.self, forKey: .category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(category, forKey: .category)
        }
    }
}
