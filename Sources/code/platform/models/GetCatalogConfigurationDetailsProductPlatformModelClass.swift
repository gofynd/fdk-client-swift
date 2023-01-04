

import Foundation
public extension PlatformClient {
    /*
         Model: GetCatalogConfigurationDetailsProduct
         Used By: Catalog
     */

    class GetCatalogConfigurationDetailsProduct: Codable {
        public var detail: [String: Any]?

        public var similar: [String: Any]?

        public var compare: [String: Any]?

        public var variant: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case detail

            case similar

            case compare

            case variant
        }

        public init(compare: [String: Any]? = nil, detail: [String: Any]? = nil, similar: [String: Any]? = nil, variant: [String: Any]? = nil) {
            self.detail = detail

            self.similar = similar

            self.compare = compare

            self.variant = variant
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                detail = try container.decode([String: Any].self, forKey: .detail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                similar = try container.decode([String: Any].self, forKey: .similar)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                compare = try container.decode([String: Any].self, forKey: .compare)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                variant = try container.decode([String: Any].self, forKey: .variant)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(detail, forKey: .detail)

            try? container.encodeIfPresent(similar, forKey: .similar)

            try? container.encodeIfPresent(compare, forKey: .compare)

            try? container.encodeIfPresent(variant, forKey: .variant)
        }
    }
}
