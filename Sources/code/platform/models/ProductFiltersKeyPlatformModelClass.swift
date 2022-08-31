

import Foundation
public extension PlatformClient {
    /*
         Model: ProductFiltersKey
         Used By: Catalog
     */

    class ProductFiltersKey: Codable {
        public var logo: String?

        public var kind: String?

        public var display: String

        public var operators: [String]?

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case logo

            case kind

            case display

            case operators

            case name
        }

        public init(display: String, kind: String? = nil, logo: String? = nil, name: String, operators: [String]? = nil) {
            self.logo = logo

            self.kind = kind

            self.display = display

            self.operators = operators

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                kind = try container.decode(String.self, forKey: .kind)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            display = try container.decode(String.self, forKey: .display)

            do {
                operators = try container.decode([String].self, forKey: .operators)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(kind, forKey: .kind)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(operators, forKey: .operators)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
