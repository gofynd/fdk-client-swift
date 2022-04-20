

import Foundation
public extension PlatformClient {
    /*
         Model: Rating
         Used By: Feedback
     */

    class Rating: Codable {
        public var attributes: [Attribute]?

        public var attributesSlugs: [String]?

        public var ui: UI?

        public enum CodingKeys: String, CodingKey {
            case attributes

            case attributesSlugs = "attributes_slugs"

            case ui
        }

        public init(attributes: [Attribute]? = nil, attributesSlugs: [String]? = nil, ui: UI? = nil) {
            self.attributes = attributes

            self.attributesSlugs = attributesSlugs

            self.ui = ui
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                attributes = try container.decode([Attribute].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attributesSlugs = try container.decode([String].self, forKey: .attributesSlugs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ui = try container.decode(UI.self, forKey: .ui)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(attributesSlugs, forKey: .attributesSlugs)

            try? container.encodeIfPresent(ui, forKey: .ui)
        }
    }
}
