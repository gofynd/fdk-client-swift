

import Foundation
public extension PlatformClient {
    /*
         Model: RefundAccountResponse
         Used By: Payment
     */

    class RefundAccountResponse: Codable {
        public var message: String

        public var success: Bool

        public var isVerifiedFlag: Bool?

        public var data: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case message

            case success

            case isVerifiedFlag = "is_verified_flag"

            case data
        }

        public init(data: [String: Any]? = nil, isVerifiedFlag: Bool? = nil, message: String, success: Bool) {
            self.message = message

            self.success = success

            self.isVerifiedFlag = isVerifiedFlag

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                data = try container.decode([String: Any].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}