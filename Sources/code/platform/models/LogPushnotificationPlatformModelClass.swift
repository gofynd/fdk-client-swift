

import Foundation
public extension PlatformClient {
    /*
         Model: LogPushnotification
         Used By: Communication
     */

    class LogPushnotification: Codable {
        public var pushtokens: [String]?

        public enum CodingKeys: String, CodingKey {
            case pushtokens
        }

        public init(pushtokens: [String]? = nil) {
            self.pushtokens = pushtokens
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pushtokens = try container.decode([String].self, forKey: .pushtokens)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pushtokens, forKey: .pushtokens)
        }
    }
}
