

import Foundation
public extension ApplicationClient {
    /*
         Model: CollectionListingFilterType
         Used By: Catalog
     */
    class CollectionListingFilterType: Codable {
        public var name: String?

        public var display: String?

        public var isSelected: Bool?

        public enum CodingKeys: String, CodingKey {
            case name

            case display

            case isSelected = "is_selected"
        }

        public init(display: String? = nil, isSelected: Bool? = nil, name: String? = nil) {
            self.name = name

            self.display = display

            self.isSelected = isSelected
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSelected = try container.decode(Bool.self, forKey: .isSelected)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
        }
    }
}
