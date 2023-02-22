

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: TeaserTag1
         Used By: Catalog
     */

    class TeaserTag1: Codable {
        public var url: String?

        public var tag: String?

        public enum CodingKeys: String, CodingKey {
            case url

            case tag
        }

        public init(tag: String? = nil, url: String? = nil) {
            self.url = url

            self.tag = tag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tag = try container.decode(String.self, forKey: .tag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(url, forKey: .url)

            try? container.encode(tag, forKey: .tag)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: TeaserTag1
         Used By: Catalog
     */

    class TeaserTag1: Codable {
        public var url: String?

        public var tag: String?

        public enum CodingKeys: String, CodingKey {
            case url

            case tag
        }

        public init(tag: String? = nil, url: String? = nil) {
            self.url = url

            self.tag = tag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tag = try container.decode(String.self, forKey: .tag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(url, forKey: .url)

            try? container.encode(tag, forKey: .tag)
        }
    }
}
