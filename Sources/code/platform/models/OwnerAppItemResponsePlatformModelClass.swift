

import Foundation
public extension PlatformClient {
    /*
         Model: OwnerAppItemResponse
         Used By: Catalog
     */

    class OwnerAppItemResponse: Codable {
        public var isGift: Bool?

        public var seo: SEOData?

        public var altText: [String: Any]?

        public var isCod: Bool?

        public var moq: MOQData?

        public enum CodingKeys: String, CodingKey {
            case isGift = "is_gift"

            case seo

            case altText = "alt_text"

            case isCod = "is_cod"

            case moq
        }

        public init(altText: [String: Any]? = nil, isCod: Bool? = nil, isGift: Bool? = nil, moq: MOQData? = nil, seo: SEOData? = nil) {
            self.isGift = isGift

            self.seo = seo

            self.altText = altText

            self.isCod = isCod

            self.moq = moq
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isGift = try container.decode(Bool.self, forKey: .isGift)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                seo = try container.decode(SEOData.self, forKey: .seo)

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
                isCod = try container.decode(Bool.self, forKey: .isCod)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isGift, forKey: .isGift)

            try? container.encodeIfPresent(seo, forKey: .seo)

            try? container.encodeIfPresent(altText, forKey: .altText)

            try? container.encodeIfPresent(isCod, forKey: .isCod)

            try? container.encodeIfPresent(moq, forKey: .moq)
        }
    }
}
