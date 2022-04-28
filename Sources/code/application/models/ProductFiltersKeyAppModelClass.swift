

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductFiltersKey
         Used By: Catalog
     */
    class ProductFiltersKey: Codable {
        public var display: String

        public var kind: String?

        public var logo: String?

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case display

            case kind

            case logo

            case name
        }

        public init(display: String, kind: String? = nil, logo: String? = nil, name: String) {
            self.display = display

            self.kind = kind

            self.logo = logo

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            display = try container.decode(String.self, forKey: .display)

            do {
                kind = try container.decode(String.self, forKey: .kind)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(kind, forKey: .kind)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}