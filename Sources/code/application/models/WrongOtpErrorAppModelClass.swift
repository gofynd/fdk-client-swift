

import Foundation
public extension ApplicationClient {
    /*
         Model: WrongOtpError
         Used By: Payment
     */
    class WrongOtpError: Codable {
        public var description: String

        public var isVerifiedFlag: Bool

        public var success: String

        public enum CodingKeys: String, CodingKey {
            case description

            case isVerifiedFlag = "is_verified_flag"

            case success
        }

        public init(description: String, isVerifiedFlag: Bool, success: String) {
            self.description = description

            self.isVerifiedFlag = isVerifiedFlag

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            description = try container.decode(String.self, forKey: .description)

            isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)

            success = try container.decode(String.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
