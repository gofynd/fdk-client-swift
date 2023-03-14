

import Foundation

public extension PlatformClient.Communication {
    /*
         Model: SendOtpCommsReqEmail
         Used By: Communication
     */

    class SendOtpCommsReqEmail: Codable {
        public var otpLength: Int?

        public var expiry: Int?

        public var template: SendOtpSmsCommsTemplate?

        public enum CodingKeys: String, CodingKey {
            case otpLength = "otp_length"

            case expiry

            case template
        }

        public init(expiry: Int? = nil, otpLength: Int? = nil, template: SendOtpSmsCommsTemplate? = nil) {
            self.otpLength = otpLength

            self.expiry = expiry

            self.template = template
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                otpLength = try container.decode(Int.self, forKey: .otpLength)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expiry = try container.decode(Int.self, forKey: .expiry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                template = try container.decode(SendOtpSmsCommsTemplate.self, forKey: .template)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otpLength, forKey: .otpLength)

            try? container.encodeIfPresent(expiry, forKey: .expiry)

            try? container.encodeIfPresent(template, forKey: .template)
        }
    }
}

public extension PlatformClient.ApplicationClient.Communication {
    /*
         Model: SendOtpCommsReqEmail
         Used By: Communication
     */

    class SendOtpCommsReqEmail: Codable {
        public var otpLength: Int?

        public var expiry: Int?

        public var template: SendOtpSmsCommsTemplate?

        public enum CodingKeys: String, CodingKey {
            case otpLength = "otp_length"

            case expiry

            case template
        }

        public init(expiry: Int? = nil, otpLength: Int? = nil, template: SendOtpSmsCommsTemplate? = nil) {
            self.otpLength = otpLength

            self.expiry = expiry

            self.template = template
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                otpLength = try container.decode(Int.self, forKey: .otpLength)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expiry = try container.decode(Int.self, forKey: .expiry)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                template = try container.decode(SendOtpSmsCommsTemplate.self, forKey: .template)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otpLength, forKey: .otpLength)

            try? container.encodeIfPresent(expiry, forKey: .expiry)

            try? container.encodeIfPresent(template, forKey: .template)
        }
    }
}
