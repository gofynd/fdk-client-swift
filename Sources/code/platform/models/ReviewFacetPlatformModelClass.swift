

import Foundation
public extension PlatformClient {
    /*
         Model: ReviewFacet
         Used By: Feedback
     */

    class ReviewFacet: Codable {
        public var display: String?

        public var name: String?

        public var selected: Bool?

        public var slug: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case display

            case name

            case selected

            case slug

            case type
        }

        public init(display: String? = nil, name: String? = nil, selected: Bool? = nil, slug: String? = nil, type: String? = nil) {
            self.display = display

            self.name = name

            self.selected = selected

            self.slug = slug

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                display = try container.decode(String.self, forKey: .display)

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

            do {
                selected = try container.decode(Bool.self, forKey: .selected)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(selected, forKey: .selected)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
