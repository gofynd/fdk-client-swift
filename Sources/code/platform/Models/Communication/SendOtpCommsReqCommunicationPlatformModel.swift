

import Foundation

public extension PlatformClient.Communication {
    /*
         Model: SendOtpCommsReq
         Used By: Communication
     */

    class SendOtpCommsReq: Codable {
        public var data: SendOtpCommsReqData?

        public var sms: SendOtpCommsReqSms?

        public var email: SendOtpCommsReqEmail?

        public enum CodingKeys: String, CodingKey {
            case data

            case sms

            case email
        }

        public init(data: SendOtpCommsReqData? = nil, email: SendOtpCommsReqEmail? = nil, sms: SendOtpCommsReqSms? = nil) {
            self.data = data

            self.sms = sms

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode(SendOtpCommsReqData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sms = try container.decode(SendOtpCommsReqSms.self, forKey: .sms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(SendOtpCommsReqEmail.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(sms, forKey: .sms)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}

public extension PlatformClient.ApplicationClient.Communication {
    /*
         Model: SendOtpCommsReq
         Used By: Communication
     */

    class SendOtpCommsReq: Codable {
        public var data: SendOtpCommsReqData?

        public var sms: SendOtpCommsReqSms?

        public var email: SendOtpCommsReqEmail?

        public enum CodingKeys: String, CodingKey {
            case data

            case sms

            case email
        }

        public init(data: SendOtpCommsReqData? = nil, email: SendOtpCommsReqEmail? = nil, sms: SendOtpCommsReqSms? = nil) {
            self.data = data

            self.sms = sms

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode(SendOtpCommsReqData.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sms = try container.decode(SendOtpCommsReqSms.self, forKey: .sms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(SendOtpCommsReqEmail.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(sms, forKey: .sms)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
