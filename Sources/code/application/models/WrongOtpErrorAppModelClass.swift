

import Foundation
public extension ApplicationClient {
    /*
         Model: WrongOtpError
         Used By: Payment
     */
    class WrongOtpError: Codable {
        public var isVerifiedFlag: Bool

        public var success: String

        public var description: String

        public enum CodingKeys: String, CodingKey {
            case isVerifiedFlag = "is_verified_flag"

            case success

            case description
        }

        public init(description: String, isVerifiedFlag: Bool, success: String) {
            self.isVerifiedFlag = isVerifiedFlag

            self.success = success

            self.description = description
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)

            success = try container.decode(String.self, forKey: .success)

            description = try container.decode(String.self, forKey: .description)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(description, forKey: .description)
        }
    }
}
