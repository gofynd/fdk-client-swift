

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PointBlankOtpData
         Used By: Order
     */

    class PointBlankOtpData: Codable {
        public var resendTimer: Int?

        public var message: String?

        public var requestId: String?

        public var mobile: Int?

        public enum CodingKeys: String, CodingKey {
            case resendTimer = "resend_timer"

            case message

            case requestId = "request_id"

            case mobile
        }

        public init(message: String? = nil, mobile: Int? = nil, requestId: String? = nil, resendTimer: Int? = nil) {
            self.resendTimer = resendTimer

            self.message = message

            self.requestId = requestId

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                resendTimer = try container.decode(Int.self, forKey: .resendTimer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobile = try container.decode(Int.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PointBlankOtpData
         Used By: Order
     */

    class PointBlankOtpData: Codable {
        public var resendTimer: Int?

        public var message: String?

        public var requestId: String?

        public var mobile: Int?

        public enum CodingKeys: String, CodingKey {
            case resendTimer = "resend_timer"

            case message

            case requestId = "request_id"

            case mobile
        }

        public init(message: String? = nil, mobile: Int? = nil, requestId: String? = nil, resendTimer: Int? = nil) {
            self.resendTimer = resendTimer

            self.message = message

            self.requestId = requestId

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                resendTimer = try container.decode(Int.self, forKey: .resendTimer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobile = try container.decode(Int.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}
