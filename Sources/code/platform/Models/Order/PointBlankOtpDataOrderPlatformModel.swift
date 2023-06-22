

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PointBlankOtpData
         Used By: Order
     */

    class PointBlankOtpData: Codable {
        public var mobile: Int?

        public var message: String?

        public var resendTimer: Int?

        public var requestId: String?

        public enum CodingKeys: String, CodingKey {
            case mobile

            case message

            case resendTimer = "resend_timer"

            case requestId = "request_id"
        }

        public init(message: String? = nil, mobile: Int? = nil, requestId: String? = nil, resendTimer: Int? = nil) {
            self.mobile = mobile

            self.message = message

            self.resendTimer = resendTimer

            self.requestId = requestId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mobile = try container.decode(Int.self, forKey: .mobile)

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
                resendTimer = try container.decode(Int.self, forKey: .resendTimer)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)

            try? container.encodeIfPresent(requestId, forKey: .requestId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PointBlankOtpData
         Used By: Order
     */

    class PointBlankOtpData: Codable {
        public var mobile: Int?

        public var message: String?

        public var resendTimer: Int?

        public var requestId: String?

        public enum CodingKeys: String, CodingKey {
            case mobile

            case message

            case resendTimer = "resend_timer"

            case requestId = "request_id"
        }

        public init(message: String? = nil, mobile: Int? = nil, requestId: String? = nil, resendTimer: Int? = nil) {
            self.mobile = mobile

            self.message = message

            self.resendTimer = resendTimer

            self.requestId = requestId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mobile = try container.decode(Int.self, forKey: .mobile)

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
                resendTimer = try container.decode(Int.self, forKey: .resendTimer)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)

            try? container.encodeIfPresent(requestId, forKey: .requestId)
        }
    }
}
