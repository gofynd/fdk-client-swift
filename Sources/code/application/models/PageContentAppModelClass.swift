

import Foundation
public extension ApplicationClient {
    /*
         Model: PageContent
         Used By: Content
     */
    class PageContent: Codable {
        public var type: String?

        public var value: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case type

            case value
        }

        public init(type: String? = nil, value: [String: Any]? = nil) {
            self.type = type

            self.value = value
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode([String: Any].self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(value, forKey: .value)
        }
    }
}
