

import Foundation
public extension ApplicationClient {
    /*
         Model: TransferItemsDetails
         Used By: Payment
     */
    class TransferItemsDetails: Codable {
        public var id: Int

        public var logoSmall: String

        public var logoLarge: String

        public var name: String

        public var displayName: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case logoSmall = "logo_small"

            case logoLarge = "logo_large"

            case name

            case displayName = "display_name"
        }

        public init(displayName: String? = nil, id: Int, logoLarge: String, logoSmall: String, name: String) {
            self.id = id

            self.logoSmall = logoSmall

            self.logoLarge = logoLarge

            self.name = name

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(Int.self, forKey: .id)

            logoSmall = try container.decode(String.self, forKey: .logoSmall)

            logoLarge = try container.decode(String.self, forKey: .logoLarge)

            name = try container.decode(String.self, forKey: .name)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(logoSmall, forKey: .logoSmall)

            try? container.encodeIfPresent(logoLarge, forKey: .logoLarge)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
