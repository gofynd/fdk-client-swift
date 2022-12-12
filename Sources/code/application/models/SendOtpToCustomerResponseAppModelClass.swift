

import Foundation
public extension ApplicationClient {
    /*
         Model: SendOtpToCustomerResponse
         Used By: Order
     */
    class SendOtpToCustomerResponse: Codable {
        public var success: Bool?

        public var resendTimer: Int?

        public var message: String?

        public var requestId: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case resendTimer = "resend_timer"

            case message

            case requestId = "request_id"
        }

        public init(message: String? = nil, requestId: String? = nil, resendTimer: Int? = nil, success: Bool? = nil) {
            self.success = success

            self.resendTimer = resendTimer

            self.message = message

            self.requestId = requestId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(requestId, forKey: .requestId)
        }
    }
}
