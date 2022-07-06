

import Foundation
public extension PlatformClient {
    /*
         Model: EmailTemplateKeys
         Used By: Communication
     */

    class EmailTemplateKeys: Codable {
        public var to: String?

        public var cc: String?

        public var bcc: String?

        public enum CodingKeys: String, CodingKey {
            case to

            case cc

            case bcc
        }

        public init(bcc: String? = nil, cc: String? = nil, to: String? = nil) {
            self.to = to

            self.cc = cc

            self.bcc = bcc
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                to = try container.decode(String.self, forKey: .to)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cc = try container.decode(String.self, forKey: .cc)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bcc = try container.decode(String.self, forKey: .bcc)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(to, forKey: .to)

            try? container.encodeIfPresent(cc, forKey: .cc)

            try? container.encodeIfPresent(bcc, forKey: .bcc)
        }
    }
}
