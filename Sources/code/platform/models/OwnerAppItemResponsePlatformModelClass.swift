

import Foundation
public extension PlatformClient {
    /*
         Model: OwnerAppItemResponse
         Used By: Catalog
     */

    class OwnerAppItemResponse: Codable {
        public var seo: SEOData?

        public var isCod: Bool?

        public var isGift: Bool?

        public var moq: MOQData?

        public var altText: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case seo

            case isCod = "is_cod"

            case isGift = "is_gift"

            case moq

            case altText = "alt_text"
        }

        public init(altText: [String: Any]? = nil, isCod: Bool? = nil, isGift: Bool? = nil, moq: MOQData? = nil, seo: SEOData? = nil) {
            self.seo = seo

            self.isCod = isCod

            self.isGift = isGift

            self.moq = moq

            self.altText = altText
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                seo = try container.decode(SEOData.self, forKey: .seo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isCod = try container.decode(Bool.self, forKey: .isCod)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isGift = try container.decode(Bool.self, forKey: .isGift)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                moq = try container.decode(MOQData.self, forKey: .moq)

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

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(isCod, forKey: .isCod)

            try? container.encodeIfPresent(isGift, forKey: .isGift)

            try? container.encodeIfPresent(moq, forKey: .moq)

            try? container.encodeIfPresent(altText, forKey: .altText)
        }
    }
}
