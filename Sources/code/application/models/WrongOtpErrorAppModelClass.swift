

import Foundation
public extension ApplicationClient {
    /*
         Model: WrongOtpError
         Used By: Payment
     */
    class WrongOtpError: Codable {
        public var success: String

        public var description: String

        public var isVerifiedFlag: Bool

        public enum CodingKeys: String, CodingKey {
            case success

            case description

            case isVerifiedFlag = "is_verified_flag"
        }

        public init(description: String, isVerifiedFlag: Bool, success: String) {
            self.success = success

            self.description = description

            self.isVerifiedFlag = isVerifiedFlag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(String.self, forKey: .success)

            description = try container.decode(String.self, forKey: .description)

            isVerifiedFlag = try container.decode(Bool.self, forKey: .isVerifiedFlag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(isVerifiedFlag, forKey: .isVerifiedFlag)
        }
    }
}
