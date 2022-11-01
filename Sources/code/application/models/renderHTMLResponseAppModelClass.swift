

import Foundation
public extension ApplicationClient {
    /*
         Model: renderHTMLResponse
         Used By: Payment
     */
    class renderHTMLResponse: Codable {
        public var status: Bool

        public var html: String

        public enum CodingKeys: String, CodingKey {
            case status

            case html
        }

        public init(html: String, status: Bool) {
            self.status = status

            self.html = html
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(Bool.self, forKey: .status)

            html = try container.decode(String.self, forKey: .html)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(html, forKey: .html)
        }
    }
}
