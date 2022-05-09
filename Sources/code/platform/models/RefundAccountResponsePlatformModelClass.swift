

import Foundation
public extension PlatformClient {
    /*
         Model: RefundAccountResponse
         Used By: Payment
     */

    class RefundAccountResponse: Codable {
        public var data: [String: Any]?

        public var isVerifiedFlag: Bool?

        public var success: Bool

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case data

            case isVerifiedFlag = "is_verified_flag"

            case success

            case message
        }

        public init(data: [String: Any]? = nil, isVerifiedFlag: Bool? = nil, message: String, success: Bool) {
            self.data = data

            self.isVerifiedFlag = isVerifiedFlag

            self.success = success

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
