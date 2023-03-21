

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: TransferItemsDetails
         Used By: Payment
     */
    class TransferItemsDetails: Codable {
        public var displayName: String?

        public var logoSmall: String

        public var id: Int

        public var logoLarge: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case logoSmall = "logo_small"

            case id

            case logoLarge = "logo_large"

            case name
        }

        public init(displayName: String? = nil, id: Int, logoLarge: String, logoSmall: String, name: String) {
            self.displayName = displayName

            self.logoSmall = logoSmall

            self.id = id

            self.logoLarge = logoLarge

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            logoSmall = try container.decode(String.self, forKey: .logoSmall)

            id = try container.decode(Int.self, forKey: .id)

            logoLarge = try container.decode(String.self, forKey: .logoLarge)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(logoSmall, forKey: .logoSmall)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(logoLarge, forKey: .logoLarge)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
