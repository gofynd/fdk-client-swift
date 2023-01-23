

import Foundation
public extension PlatformClient {
    /*
         Model: FontsSchema
         Used By: Theme
     */

    class FontsSchema: Codable {
        public var items: FontsSchemaItems?

        public var kind: String?

        public enum CodingKeys: String, CodingKey {
            case items

            case kind
        }

        public init(items: FontsSchemaItems? = nil, kind: String? = nil) {
            self.items = items

            self.kind = kind
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode(FontsSchemaItems.self, forKey: .items)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(kind, forKey: .kind)
        }
    }
}
