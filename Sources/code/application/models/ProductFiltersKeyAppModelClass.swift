

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductFiltersKey
         Used By: Catalog
     */
    class ProductFiltersKey: Codable {
        public var logo: String?

        public var display: String

        public var name: String

        public var kind: String?

        public enum CodingKeys: String, CodingKey {
            case logo

            case display

            case name

            case kind
        }

        public init(display: String, kind: String? = nil, logo: String? = nil, name: String) {
            self.logo = logo

            self.display = display

            self.name = name

            self.kind = kind
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            display = try container.decode(String.self, forKey: .display)

            name = try container.decode(String.self, forKey: .name)

            do {
                kind = try container.decode(String.self, forKey: .kind)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(kind, forKey: .kind)
        }
    }
}
