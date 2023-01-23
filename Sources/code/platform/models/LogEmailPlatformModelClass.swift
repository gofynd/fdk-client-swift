

import Foundation
public extension PlatformClient {
    /*
         Model: LogEmail
         Used By: Communication
     */

    class LogEmail: Codable {
        public var template: String?

        public enum CodingKeys: String, CodingKey {
            case template
        }

        public init(template: String? = nil) {
            self.template = template
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                template = try container.decode(String.self, forKey: .template)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(template, forKey: .template)
        }
    }
}
