

import Foundation
public extension ApplicationClient {
    /*
         Model: renderHTMLResponse
         Used By: Payment
     */
    class renderHTMLResponse: Codable {
        public var html: String

        public var status: Bool

        public enum CodingKeys: String, CodingKey {
            case html

            case status
        }

        public init(html: String, status: Bool) {
            self.html = html

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            html = try container.decode(String.self, forKey: .html)

            status = try container.decode(Bool.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(html, forKey: .html)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
