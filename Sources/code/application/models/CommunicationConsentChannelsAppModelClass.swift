

import Foundation
public extension ApplicationClient {
    /*
         Model: CommunicationConsentChannels
         Used By: Communication
     */
    class CommunicationConsentChannels: Codable {
        public var email: CommunicationConsentChannelsEmail?

        public var sms: CommunicationConsentChannelsSms?

        public var whatsapp: CommunicationConsentChannelsWhatsapp?

        public enum CodingKeys: String, CodingKey {
            case email

            case sms

            case whatsapp
        }

        public init(email: CommunicationConsentChannelsEmail? = nil, sms: CommunicationConsentChannelsSms? = nil, whatsapp: CommunicationConsentChannelsWhatsapp? = nil) {
            self.email = email

            self.sms = sms

            self.whatsapp = whatsapp
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(CommunicationConsentChannelsEmail.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sms = try container.decode(CommunicationConsentChannelsSms.self, forKey: .sms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                whatsapp = try container.decode(CommunicationConsentChannelsWhatsapp.self, forKey: .whatsapp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(sms, forKey: .sms)

            try? container.encodeIfPresent(whatsapp, forKey: .whatsapp)
        }
    }
}
