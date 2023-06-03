

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: Media1
         Used By: Catalog
     */

    class Media1: Codable {
        public var url: String?

        public var type: String?

        public var aspectRatio: String?

        public enum CodingKeys: String, CodingKey {
            case url

            case type

            case aspectRatio = "aspect_ratio"
        }

        public init(aspectRatio: String? = nil, type: String? = nil, url: String? = nil) {
            self.url = url

            self.type = type

            self.aspectRatio = aspectRatio
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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aspectRatio = try container.decode(String.self, forKey: .aspectRatio)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: Media1
         Used By: Catalog
     */

    class Media1: Codable {
        public var url: String?

        public var type: String?

        public var aspectRatio: String?

        public enum CodingKeys: String, CodingKey {
            case url

            case type

            case aspectRatio = "aspect_ratio"
        }

        public init(aspectRatio: String? = nil, type: String? = nil, url: String? = nil) {
            self.url = url

            self.type = type

            self.aspectRatio = aspectRatio
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
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aspectRatio = try container.decode(String.self, forKey: .aspectRatio)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)
        }
    }
}
