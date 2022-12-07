

import Foundation
public extension PlatformClient {
    /*
         Model: ProductDownloadItemsData
         Used By: Catalog
     */

    class ProductDownloadItemsData: Codable {
        public var type: String?

        public var templates: [String]?

        public var brand: [String]?

        public enum CodingKeys: String, CodingKey {
            case type

            case templates

            case brand
        }

        public init(brand: [String]? = nil, templates: [String]? = nil, type: String? = nil) {
            self.type = type

            self.templates = templates

            self.brand = brand
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                templates = try container.decode([String].self, forKey: .templates)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode([String].self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(templates, forKey: .templates)

            try? container.encodeIfPresent(brand, forKey: .brand)
        }
    }
}
