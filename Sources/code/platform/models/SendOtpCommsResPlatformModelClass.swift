

import Foundation
public extension PlatformClient {
    /*
         Model: SendOtpCommsRes
         Used By: Communication
     */

    class SendOtpCommsRes: Codable {
        public var sms: SendOtpCommsResSms?

        public var email: SendOtpCommsResEmail?

        public enum CodingKeys: String, CodingKey {
            case sms

            case email
        }

        public init(email: SendOtpCommsResEmail? = nil, sms: SendOtpCommsResSms? = nil) {
            self.sms = sms

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sms = try container.decode(SendOtpCommsResSms.self, forKey: .sms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(SendOtpCommsResEmail.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sms, forKey: .sms)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
