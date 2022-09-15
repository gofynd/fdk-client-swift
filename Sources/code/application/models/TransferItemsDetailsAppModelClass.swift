

import Foundation
public extension ApplicationClient {
    /*
         Model: TransferItemsDetails
         Used By: Payment
     */
    class TransferItemsDetails: Codable {
        public var name: String

        public var displayName: String?

        public var id: Int

        public var logoLarge: String

        public var logoSmall: String

        public enum CodingKeys: String, CodingKey {
            case name

            case displayName = "display_name"

            case id

            case logoLarge = "logo_large"

            case logoSmall = "logo_small"
        }

        public init(displayName: String? = nil, id: Int, logoLarge: String, logoSmall: String, name: String) {
            self.name = name

            self.displayName = displayName

            self.id = id

            self.logoLarge = logoLarge

            self.logoSmall = logoSmall
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            logoLarge = try container.decode(String.self, forKey: .logoLarge)

            logoSmall = try container.decode(String.self, forKey: .logoSmall)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(logoLarge, forKey: .logoLarge)

            try? container.encodeIfPresent(logoSmall, forKey: .logoSmall)
        }
    }
}
