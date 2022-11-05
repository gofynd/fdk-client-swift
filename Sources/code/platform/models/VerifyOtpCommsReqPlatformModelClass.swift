

import Foundation
public extension PlatformClient {
    /*
         Model: VerifyOtpCommsReq
         Used By: Communication
     */

    class VerifyOtpCommsReq: Codable {
        public var requestId: String?

        public var otp: String?

        public enum CodingKeys: String, CodingKey {
            case requestId = "request_id"

            case otp
        }

        public init(otp: String? = nil, requestId: String? = nil) {
            self.requestId = requestId

            self.otp = otp
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                otp = try container.decode(String.self, forKey: .otp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(otp, forKey: .otp)
        }
    }
}
