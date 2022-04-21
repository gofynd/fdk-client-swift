

import Foundation
public extension ApplicationClient {
    /*
         Model: CommunicationConsentChannelsWhatsapp
         Used By: Communication
     */
    class CommunicationConsentChannelsWhatsapp: Codable {
        public var response: String?

        public var displayName: String?

        public var countryCode: String?

        public var phoneNumber: String?

        public enum CodingKeys: String, CodingKey {
            case response

            case displayName = "display_name"

            case countryCode = "country_code"

            case phoneNumber = "phone_number"
        }

        public init(countryCode: String? = nil, displayName: String? = nil, phoneNumber: String? = nil, response: String? = nil) {
            self.response = response

            self.displayName = displayName

            self.countryCode = countryCode

            self.phoneNumber = phoneNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                response = try container.decode(String.self, forKey: .response)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phoneNumber = try container.decode(String.self, forKey: .phoneNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(response, forKey: .response)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        }
    }
}
