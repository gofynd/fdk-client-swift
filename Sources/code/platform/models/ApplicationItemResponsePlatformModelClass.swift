

import Foundation
public extension PlatformClient {
    /*
         Model: ApplicationItemResponse
         Used By: Catalog
     */

    class ApplicationItemResponse: Codable {
        public var moq: MOQ?

        public var seo: SEO?

        public var altText: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case moq

            case seo

            case altText = "alt_text"
        }

        public init(altText: [String: Any]? = nil, moq: MOQ? = nil, seo: SEO? = nil) {
            self.moq = moq

            self.seo = seo

            self.altText = altText
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                moq = try container.decode(MOQ.self, forKey: .moq)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(altText, forKey: .altText)
        }
    }
}
