

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: TransferItemsDetails
         Used By: Payment
     */
    class TransferItemsDetails: Codable {
        public var displayName: Bool?

        public var logoLarge: String

        public var id: String

        public var name: String

        public var logoSmall: String

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case logoLarge = "logo_large"

            case id

            case name

            case logoSmall = "logo_small"
        }

        public init(displayName: Bool? = nil, id: String, logoLarge: String, logoSmall: String, name: String) {
            self.displayName = displayName

            self.logoLarge = logoLarge

            self.id = id

            self.name = name

            self.logoSmall = logoSmall
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                displayName = try container.decode(Bool.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            logoLarge = try container.decode(String.self, forKey: .logoLarge)

            id = try container.decode(String.self, forKey: .id)

            name = try container.decode(String.self, forKey: .name)

            logoSmall = try container.decode(String.self, forKey: .logoSmall)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(logoLarge, forKey: .logoLarge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logoSmall, forKey: .logoSmall)
        }
    }
}
