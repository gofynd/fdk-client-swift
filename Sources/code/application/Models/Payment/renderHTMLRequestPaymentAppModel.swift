

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: renderHTMLRequest
         Used By: Payment
     */
    class renderHTMLRequest: Codable {
        public var returntype: String?

        public var base64Html: String

        public enum CodingKeys: String, CodingKey {
            case returntype

            case base64Html = "base64_html"
        }

        public init(base64Html: String, returntype: String? = nil) {
            self.returntype = returntype

            self.base64Html = base64Html
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                returntype = try container.decode(String.self, forKey: .returntype)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            base64Html = try container.decode(String.self, forKey: .base64Html)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(returntype, forKey: .returntype)

            try? container.encodeIfPresent(base64Html, forKey: .base64Html)
        }
    }
}
