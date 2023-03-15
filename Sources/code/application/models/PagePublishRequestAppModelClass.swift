

import Foundation
public extension ApplicationClient {
    /*
         Model: PagePublishRequest
         Used By: Content
     */
    class PagePublishRequest: Codable {
        public var publish: Bool?

        public enum CodingKeys: String, CodingKey {
            case publish
        }

        public init(publish: Bool? = nil) {
            self.publish = publish
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                publish = try container.decode(Bool.self, forKey: .publish)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(publish, forKey: .publish)
        }
    }
}
