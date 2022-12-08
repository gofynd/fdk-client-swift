

import Foundation
public extension PlatformClient {
    /*
         Model: Media1
         Used By: Catalog
     */

    class Media1: Codable {
        public var type: String?

        public var meta: [String: Any]?

        public var url: String

        public enum CodingKeys: String, CodingKey {
            case type

            case meta

            case url
        }

        public init(meta: [String: Any]? = nil, type: String? = nil, url: String) {
            self.type = type

            self.meta = meta

            self.url = url
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            url = try container.decode(String.self, forKey: .url)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }
}
