

import Foundation
public extension PlatformClient {
    /*
         Model: IfscCodeResponse
         Used By: Payment
     */

    class IfscCodeResponse: Codable {
        public var bankName: String

        public var branchName: String

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case bankName = "bank_name"

            case branchName = "branch_name"

            case success
        }

        public init(bankName: String, branchName: String, success: Bool? = nil) {
            self.bankName = bankName

            self.branchName = branchName

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bankName = try container.decode(String.self, forKey: .bankName)

            branchName = try container.decode(String.self, forKey: .branchName)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
