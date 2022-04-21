

import Foundation
public extension ApplicationClient {
    /*
         Model: GlobalSchemaProps
         Used By: Theme
     */
    class GlobalSchemaProps: Codable {
        public var id: String?

        public var label: String?

        public var type: String?

        public var category: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case label

            case type

            case category
        }

        public init(category: String? = nil, id: String? = nil, label: String? = nil, type: String? = nil) {
            self.id = id

            self.label = label

            self.type = type

            self.category = category
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                label = try container.decode(String.self, forKey: .label)

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
                category = try container.decode(String.self, forKey: .category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(label, forKey: .label)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(category, forKey: .category)
        }
    }
}
