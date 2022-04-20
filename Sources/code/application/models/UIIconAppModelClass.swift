

import Foundation
public extension ApplicationClient {
    /*
         Model: UIIcon
         Used By: Feedback
     */
    class UIIcon: Codable {
        public var active: String?

        public var inactive: String?

        public var selected: [String]?

        public enum CodingKeys: String, CodingKey {
            case active

            case inactive

            case selected
        }

        public init(active: String? = nil, inactive: String? = nil, selected: [String]? = nil) {
            self.active = active

            self.inactive = inactive

            self.selected = selected
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                active = try container.decode(String.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                inactive = try container.decode(String.self, forKey: .inactive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                selected = try container.decode([String].self, forKey: .selected)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(inactive, forKey: .inactive)

            try? container.encodeIfPresent(selected, forKey: .selected)
        }
    }
}
