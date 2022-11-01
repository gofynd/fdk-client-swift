

import Foundation
public extension PlatformClient {
    /*
         Model: ApplicationItemResponse
         Used By: Catalog
     */

    class ApplicationItemResponse: Codable {
        public var moq: MOQ?

        public var seo: SEO?

        public enum CodingKeys: String, CodingKey {
            case moq

            case seo
        }

        public init(moq: MOQ? = nil, seo: SEO? = nil) {
            self.moq = moq

            self.seo = seo
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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(seo, forKey: .seo)
        }
    }
}
