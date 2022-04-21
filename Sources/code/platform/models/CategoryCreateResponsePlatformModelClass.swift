

import Foundation
public extension PlatformClient {
    /*
         Model: CategoryCreateResponse
         Used By: Catalog
     */

    class CategoryCreateResponse: Codable {
        public var uid: Int?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case message
        }

        public init(message: String? = nil, uid: Int? = nil) {
            self.uid = uid

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
