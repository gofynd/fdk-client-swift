

import Foundation
public extension ApplicationClient {
    /*
         Model: creditNoteParameter
         Used By: Order
     */
    class creditNoteParameter: Codable {
        public var expiresIn: Int?

        public enum CodingKeys: String, CodingKey {
            case expiresIn = "expires_in"
        }

        public init(expiresIn: Int? = nil) {
            self.expiresIn = expiresIn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                expiresIn = try container.decode(Int.self, forKey: .expiresIn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(expiresIn, forKey: .expiresIn)
        }
    }
}
