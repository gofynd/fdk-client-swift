import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: IfscCodeResponse
         Used By: Payment
     */
    class IfscCodeResponse: Codable {
        public var branchName: String

        public var success: Bool?

        public var bankName: String

        public enum CodingKeys: String, CodingKey {
            case branchName = "branch_name"

            case success

            case bankName = "bank_name"
        }

        public init(bankName: String, branchName: String, success: Bool? = nil) {
            self.branchName = branchName

            self.success = success

            self.bankName = bankName
        }

        public func duplicate() -> IfscCodeResponse {
            let dict = self.dictionary!
            let copy = IfscCodeResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            branchName = try container.decode(String.self, forKey: .branchName)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(bankName, forKey: .bankName)
        }
    }
}
