

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: DisplayMetaSchema1
         Used By: Cart
     */

    class DisplayMetaSchema1: Codable {
        public var offerLabel: String?

        public var description: String?

        public var name: String?

        public var offerText: String?

        public enum CodingKeys: String, CodingKey {
            case offerLabel = "offer_label"

            case description

            case name

            case offerText = "offer_text"
        }

        public init(description: String? = nil, name: String? = nil, offerLabel: String? = nil, offerText: String? = nil) {
            self.offerLabel = offerLabel

            self.description = description

            self.name = name

            self.offerText = offerText
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                offerLabel = try container.decode(String.self, forKey: .offerLabel)

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
                name = try container.decode(String.self, forKey: .name)

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

            try? container.encodeIfPresent(offerLabel, forKey: .offerLabel)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(offerText, forKey: .offerText)
        }
    }
}
