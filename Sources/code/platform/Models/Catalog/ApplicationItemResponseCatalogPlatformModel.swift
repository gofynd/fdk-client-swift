

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ApplicationItemResponse
         Used By: Catalog
     */

    class ApplicationItemResponse: Codable {
        public var seo: SEO?

        public var altText: [String: Any]?

        public var moq: MOQ?

        public enum CodingKeys: String, CodingKey {
            case seo

            case altText = "alt_text"

            case moq
        }

        public init(altText: [String: Any]? = nil, moq: MOQ? = nil, seo: SEO? = nil) {
            self.seo = seo

            self.altText = altText

            self.moq = moq
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                seo = try container.decode(SEO.self, forKey: .seo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                altText = try container.decode([String: Any].self, forKey: .altText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                moq = try container.decode(MOQ.self, forKey: .moq)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(altText, forKey: .altText)

            try? container.encodeIfPresent(moq, forKey: .moq)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ApplicationItemResponse
         Used By: Catalog
     */

    class ApplicationItemResponse: Codable {
        public var seo: SEO?

        public var altText: [String: Any]?

        public var moq: MOQ?

        public enum CodingKeys: String, CodingKey {
            case seo

            case altText = "alt_text"

            case moq
        }

        public init(altText: [String: Any]? = nil, moq: MOQ? = nil, seo: SEO? = nil) {
            self.seo = seo

            self.altText = altText

            self.moq = moq
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                seo = try container.decode(SEO.self, forKey: .seo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                altText = try container.decode([String: Any].self, forKey: .altText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                moq = try container.decode(MOQ.self, forKey: .moq)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(altText, forKey: .altText)

            try? container.encodeIfPresent(moq, forKey: .moq)
        }
    }
}
