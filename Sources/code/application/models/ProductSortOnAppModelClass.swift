

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductSortOn
         Used By: Catalog
     */
    class ProductSortOn: Codable {
        public var isSelected: Bool?

        public var value: String?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case isSelected = "is_selected"

            case value

            case name
        }

        public init(isSelected: Bool? = nil, name: String? = nil, value: String? = nil) {
            self.isSelected = isSelected

            self.value = value

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isSelected = try container.decode(Bool.self, forKey: .isSelected)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
