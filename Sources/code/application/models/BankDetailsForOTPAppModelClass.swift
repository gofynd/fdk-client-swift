import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: BankDetailsForOTP
         Used By: Payment
     */
    class BankDetailsForOTP: Codable {
        public var bankName: String

        public var ifscCode: String

        public var accountNo: String

        public var branchName: String

        public var accountHolder: String

        public enum CodingKeys: String, CodingKey {
            case bankName = "bank_name"

            case ifscCode = "ifsc_code"

            case accountNo = "account_no"

            case branchName = "branch_name"

            case accountHolder = "account_holder"
        }

        public init(accountHolder: String, accountNo: String, bankName: String, branchName: String, ifscCode: String) {
            self.bankName = bankName

            self.ifscCode = ifscCode

            self.accountNo = accountNo

            self.branchName = branchName

            self.accountHolder = accountHolder
        }

        public func duplicate() -> BankDetailsForOTP {
            let dict = self.dictionary!
            let copy = BankDetailsForOTP(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bankName = try container.decode(String.self, forKey: .bankName)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            branchName = try container.decode(String.self, forKey: .branchName)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
        }
    }
}
