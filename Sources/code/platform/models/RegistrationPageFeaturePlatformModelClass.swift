

import Foundation
public extension PlatformClient {
    /*
         Model: RegistrationPageFeature
         Used By: Configuration
     */

    class RegistrationPageFeature: Codable {
        public var askStoreAddress: Bool?

        public enum CodingKeys: String, CodingKey {
            case askStoreAddress = "ask_store_address"
        }

        public init(askStoreAddress: Bool? = nil) {
            self.askStoreAddress = askStoreAddress
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                askStoreAddress = try container.decode(Bool.self, forKey: .askStoreAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(askStoreAddress, forKey: .askStoreAddress)
        }
    }
}
