

import Foundation
public extension ApplicationClient {
    /*
         Model: renderHTMLRequest
         Used By: Payment
     */
    class renderHTMLRequest: Codable {
        public var base64Html: String

        public enum CodingKeys: String, CodingKey {
            case base64Html = "base64_html"
        }

        public init(base64Html: String) {
            self.base64Html = base64Html
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            base64Html = try container.decode(String.self, forKey: .base64Html)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(base64Html, forKey: .base64Html)
        }
    }
}
