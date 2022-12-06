

import Foundation
public extension PlatformClient {
    /*
         Model: SendOtpSmsCommsProvider
         Used By: Communication
     */

    class SendOtpSmsCommsProvider: Codable {
        public var slug: String?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case slug

            case id = "_id"
        }

        public init(slug: String? = nil, id: String? = nil) {
            self.slug = slug

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
