

import Foundation
public extension ApplicationClient {
    /*
         Model: SendOtpToCustomerResponse
         Used By: Order
     */
    class SendOtpToCustomerResponse: Codable {
        public var message: String?

        public var requestId: String?

        public var resendTimer: Int?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case message

            case requestId = "request_id"

            case resendTimer = "resend_timer"

            case success
        }

        public init(message: String? = nil, requestId: String? = nil, resendTimer: Int? = nil, success: Bool? = nil) {
            self.message = message

            self.requestId = requestId

            self.resendTimer = resendTimer

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                resendTimer = try container.decode(Int.self, forKey: .resendTimer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
