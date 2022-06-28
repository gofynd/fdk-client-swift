

import Foundation
public extension ApplicationClient {
    /*
         Model: TransferItemsDetails
         Used By: Payment
     */
    class TransferItemsDetails: Codable {
        public var logoSmall: String

        public var displayName: String?

        public var id: Int

        public var name: String

        public var logoLarge: String

        public enum CodingKeys: String, CodingKey {
            case logoSmall = "logo_small"

            case displayName = "display_name"

            case id

            case name

            case logoLarge = "logo_large"
        }

        public init(displayName: String? = nil, id: Int, logoLarge: String, logoSmall: String, name: String) {
            self.logoSmall = logoSmall

            self.displayName = displayName

            self.id = id

            self.name = name

            self.logoLarge = logoLarge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            logoSmall = try container.decode(String.self, forKey: .logoSmall)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            name = try container.decode(String.self, forKey: .name)

            logoLarge = try container.decode(String.self, forKey: .logoLarge)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logoSmall, forKey: .logoSmall)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logoLarge, forKey: .logoLarge)
        }
    }
}
