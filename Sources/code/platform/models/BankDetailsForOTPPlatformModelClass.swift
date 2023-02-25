

import Foundation
public extension PlatformClient {
    /*
         Model: BankDetailsForOTP
         Used By: Payment
     */

    class BankDetailsForOTP: Codable {
        public var accountHolder: String

        public var ifscCode: String

        public var accountNo: String

        public var branchName: String

        public var bankName: String

        public enum CodingKeys: String, CodingKey {
            case accountHolder = "account_holder"

            case ifscCode = "ifsc_code"

            case accountNo = "account_no"

            case branchName = "branch_name"

            case bankName = "bank_name"
        }

        public init(accountHolder: String, accountNo: String, bankName: String, branchName: String, ifscCode: String) {
            self.accountHolder = accountHolder

            self.ifscCode = ifscCode

            self.accountNo = accountNo

            self.branchName = branchName

            self.bankName = bankName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            branchName = try container.decode(String.self, forKey: .branchName)

            bankName = try container.decode(String.self, forKey: .bankName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(bankName, forKey: .bankName)
        }
    }
}
