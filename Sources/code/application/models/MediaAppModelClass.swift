

import Foundation
public extension ApplicationClient {
    /*
         Model: Media
         Used By: Catalog
     */
    class Media: Codable {
        public var type: String?

        public var url: String?

        public var meta: Meta?

        public var alt: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case url

            case meta

            case alt
        }

        public init(alt: String? = nil, meta: Meta? = nil, type: String? = nil, url: String? = nil) {
            self.type = type

            self.url = url

            self.meta = meta

            self.alt = alt
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
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(Meta.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                alt = try container.decode(String.self, forKey: .alt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(alt, forKey: .alt)
        }
    }
}
