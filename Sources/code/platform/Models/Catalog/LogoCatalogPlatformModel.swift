

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: Logo
         Used By: Catalog
     */

    class Logo: Codable {
        public var url: String?

        public var secureUrl: String?

        public var aspectRatio: String?

        public var aspectRatioF: Int?

        public enum CodingKeys: String, CodingKey {
            case url

            case secureUrl = "secure_url"

            case aspectRatio = "aspect_ratio"

            case aspectRatioF = "aspect_ratio_f"
        }

        public init(aspectRatio: String? = nil, aspectRatioF: Int? = nil, secureUrl: String? = nil, url: String? = nil) {
            self.url = url

            self.secureUrl = secureUrl

            self.aspectRatio = aspectRatio

            self.aspectRatioF = aspectRatioF
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
                secureUrl = try container.decode(String.self, forKey: .secureUrl)

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

            do {
                aspectRatioF = try container.decode(Int.self, forKey: .aspectRatioF)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)

            try? container.encodeIfPresent(aspectRatioF, forKey: .aspectRatioF)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: Logo
         Used By: Catalog
     */

    class Logo: Codable {
        public var url: String?

        public var secureUrl: String?

        public var aspectRatio: String?

        public var aspectRatioF: Int?

        public enum CodingKeys: String, CodingKey {
            case url

            case secureUrl = "secure_url"

            case aspectRatio = "aspect_ratio"

            case aspectRatioF = "aspect_ratio_f"
        }

        public init(aspectRatio: String? = nil, aspectRatioF: Int? = nil, secureUrl: String? = nil, url: String? = nil) {
            self.url = url

            self.secureUrl = secureUrl

            self.aspectRatio = aspectRatio

            self.aspectRatioF = aspectRatioF
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
                secureUrl = try container.decode(String.self, forKey: .secureUrl)

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

            do {
                aspectRatioF = try container.decode(Int.self, forKey: .aspectRatioF)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(secureUrl, forKey: .secureUrl)

            try? container.encodeIfPresent(aspectRatio, forKey: .aspectRatio)

            try? container.encodeIfPresent(aspectRatioF, forKey: .aspectRatioF)
        }
    }
}
