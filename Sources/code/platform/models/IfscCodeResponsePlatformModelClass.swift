import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: IfscCodeResponse
         Used By: Payment
     */

    class IfscCodeResponse: Codable {
        public var branchName: String

        public var bankName: String

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case branchName = "branch_name"

            case bankName = "bank_name"

            case success
        }

        public init(bankName: String, branchName: String, success: Bool? = nil) {
            self.branchName = branchName

            self.bankName = bankName

            self.success = success
        }

        public func duplicate() -> IfscCodeResponse {
            let dict = self.dictionary!
            let copy = IfscCodeResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            branchName = try container.decode(String.self, forKey: .branchName)

            bankName = try container.decode(String.self, forKey: .bankName)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
