

import Foundation
public extension PlatformClient {
    /*
         Model: DeleteAccountReasons
         Used By: User
     */

    class DeleteAccountReasons: Codable {
        public var reasonText: String?

        public enum CodingKeys: String, CodingKey {
            case reasonText = "reason_text"
        }

        public init(reasonText: String? = nil) {
            self.reasonText = reasonText
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                reasonText = try container.decode(String.self, forKey: .reasonText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reasonText, forKey: .reasonText)
        }
    }
}
