

import Foundation
public extension ApplicationClient {
    /*
         Model: SortMethod
         Used By: Feedback
     */
    class SortMethod: Codable {
        public var name: String?

        public var selected: Bool?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case selected

            case type
        }

        public init(name: String? = nil, selected: Bool? = nil, type: String? = nil) {
            self.name = name

            self.selected = selected

            self.type = type
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
                selected = try container.decode(Bool.self, forKey: .selected)

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

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(selected, forKey: .selected)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
