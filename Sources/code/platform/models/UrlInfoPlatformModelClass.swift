

import Foundation
public extension PlatformClient {
    /*
         Model: UrlInfo
         Used By: Share
     */

    class UrlInfo: Codable {
        public var original: String?

        public var short: String?

        public var hash: String?

        public enum CodingKeys: String, CodingKey {
            case original

            case short

            case hash
        }

        public init(hash: String? = nil, original: String? = nil, short: String? = nil) {
            self.original = original

            self.short = short

            self.hash = hash
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                original = try container.decode(String.self, forKey: .original)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                short = try container.decode(String.self, forKey: .short)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hash = try container.decode(String.self, forKey: .hash)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(original, forKey: .original)

            try? container.encodeIfPresent(short, forKey: .short)

            try? container.encodeIfPresent(hash, forKey: .hash)
        }
    }
}
