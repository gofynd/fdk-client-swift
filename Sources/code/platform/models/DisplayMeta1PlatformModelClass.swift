

import Foundation
public extension PlatformClient {
    /*
         Model: DisplayMeta1
         Used By: Cart
     */

    class DisplayMeta1: Codable {
        public var name: String?

        public var description: String?

        public var offerText: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case description

            case offerText = "offer_text"
        }

        public init(description: String? = nil, name: String? = nil, offerText: String? = nil) {
            self.name = name

            self.description = description

            self.offerText = offerText
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                offerText = try container.decode(String.self, forKey: .offerText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(offerText, forKey: .offerText)
        }
    }
}
