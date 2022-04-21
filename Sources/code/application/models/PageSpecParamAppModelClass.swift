

import Foundation
public extension ApplicationClient {
    /*
         Model: PageSpecParam
         Used By: Content
     */
    class PageSpecParam: Codable {
        public var key: String?

        public var required: Bool?

        public enum CodingKeys: String, CodingKey {
            case key

            case required
        }

        public init(key: String? = nil, required: Bool? = nil) {
            self.key = key

            self.required = required
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                required = try container.decode(Bool.self, forKey: .required)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(required, forKey: .required)
        }
    }
}
