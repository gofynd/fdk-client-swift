

import Foundation
public extension ApplicationClient {
    /*
         Model: AutocompleteItem
         Used By: Catalog
     */
    class AutocompleteItem: Codable {
        public var action: ProductListingAction?

        public var display: String?

        public var type: String?

        public var logo: Media?

        public enum CodingKeys: String, CodingKey {
            case action

            case display

            case type

            case logo
        }

        public init(action: ProductListingAction? = nil, display: String? = nil, logo: Media? = nil, type: String? = nil) {
            self.action = action

            self.display = display

            self.type = type

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                action = try container.decode(ProductListingAction.self, forKey: .action)

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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(Media.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}
