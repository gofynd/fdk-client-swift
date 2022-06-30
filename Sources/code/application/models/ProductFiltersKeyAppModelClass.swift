

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductFiltersKey
         Used By: Catalog
     */
    class ProductFiltersKey: Codable {
        public var kind: String?

        public var name: String

        public var display: String

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case kind

            case name

            case display

            case logo
        }

        public init(display: String, kind: String? = nil, logo: String? = nil, name: String) {
            self.kind = kind

            self.name = name

            self.display = display

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                kind = try container.decode(String.self, forKey: .kind)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            display = try container.decode(String.self, forKey: .display)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(kind, forKey: .kind)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}
