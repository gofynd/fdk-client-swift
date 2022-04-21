

import Foundation
public extension PlatformClient {
    /*
         Model: LocaleLanguage
         Used By: Content
     */

    class LocaleLanguage: Codable {
        public var hi: Language?

        public var ar: Language?

        public var enUs: Language?

        public enum CodingKeys: String, CodingKey {
            case hi

            case ar

            case enUs = "en_us"
        }

        public init(ar: Language? = nil, enUs: Language? = nil, hi: Language? = nil) {
            self.hi = hi

            self.ar = ar

            self.enUs = enUs
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                hi = try container.decode(Language.self, forKey: .hi)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ar = try container.decode(Language.self, forKey: .ar)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enUs = try container.decode(Language.self, forKey: .enUs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hi, forKey: .hi)

            try? container.encodeIfPresent(ar, forKey: .ar)

            try? container.encodeIfPresent(enUs, forKey: .enUs)
        }
    }
}
