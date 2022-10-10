

import Foundation
public extension PlatformClient {
    /*
         Model: SignedSuccessResponse
         Used By: DocumentEngine
     */

    class SignedSuccessResponse: Codable {
        public var uid: String?

        public var url: String?

        public var expiresIn: Double?

        public enum CodingKeys: String, CodingKey {
            case uid

            case url

            case expiresIn = "expires_in"
        }

        public init(expiresIn: Double? = nil, uid: String? = nil, url: String? = nil) {
            self.uid = uid

            self.url = url

            self.expiresIn = expiresIn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expiresIn = try container.decode(Double.self, forKey: .expiresIn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(expiresIn, forKey: .expiresIn)
        }
    }
}
