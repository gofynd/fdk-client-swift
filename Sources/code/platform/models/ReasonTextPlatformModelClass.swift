

import Foundation
public extension PlatformClient {
    /*
         Model: ReasonText
         Used By: Order
     */

    class ReasonText: Codable {
        public var text: String?

        public var id: Int?

        public enum CodingKeys: String, CodingKey {
            case text

            case id
        }

        public init(id: Int? = nil, text: String? = nil) {
            self.text = text

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                text = try container.decode(String.self, forKey: .text)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(text, forKey: .text)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
