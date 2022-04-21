

import Foundation
public extension PlatformClient {
    /*
         Model: CustomMetaTag
         Used By: Content
     */

    class CustomMetaTag: Codable {
        public var name: String?

        public var content: String?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case content

            case id = "_id"
        }

        public init(content: String? = nil, name: String? = nil, id: String? = nil) {
            self.name = name

            self.content = content

            self.id = id
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
                content = try container.decode(String.self, forKey: .content)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(content, forKey: .content)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
