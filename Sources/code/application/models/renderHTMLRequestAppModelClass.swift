

import Foundation
public extension ApplicationClient {
    /*
         Model: renderHTMLRequest
         Used By: Payment
     */
    class renderHTMLRequest: Codable {
        public var base64Html: String

        public var returntype: String?

        public enum CodingKeys: String, CodingKey {
            case base64Html = "base64_html"

            case returntype
        }

        public init(base64Html: String, returntype: String? = nil) {
            self.base64Html = base64Html

            self.returntype = returntype
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            base64Html = try container.decode(String.self, forKey: .base64Html)

            do {
                returntype = try container.decode(String.self, forKey: .returntype)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(base64Html, forKey: .base64Html)

            try? container.encode(returntype, forKey: .returntype)
        }
    }
}
