

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: BankDetailsForOTP
         Used By: Payment
     */

    class BankDetailsForOTP: Codable {
        public var ifscCode: String

        public var accountNo: String

        public var accountHolder: String

        public var branchName: String

        public var bankName: String

        public enum CodingKeys: String, CodingKey {
            case ifscCode = "ifsc_code"

            case accountNo = "account_no"

            case accountHolder = "account_holder"

            case branchName = "branch_name"

            case bankName = "bank_name"
        }

        public init(accountHolder: String, accountNo: String, bankName: String, branchName: String, ifscCode: String) {
            self.ifscCode = ifscCode

            self.accountNo = accountNo

            self.accountHolder = accountHolder

            self.branchName = branchName

            self.bankName = bankName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            branchName = try container.decode(String.self, forKey: .branchName)

            bankName = try container.decode(String.self, forKey: .bankName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(bankName, forKey: .bankName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: BankDetailsForOTP
         Used By: Payment
     */

    class BankDetailsForOTP: Codable {
        public var ifscCode: String

        public var accountNo: String

        public var accountHolder: String

        public var branchName: String

        public var bankName: String

        public enum CodingKeys: String, CodingKey {
            case ifscCode = "ifsc_code"

            case accountNo = "account_no"

            case accountHolder = "account_holder"

            case branchName = "branch_name"

            case bankName = "bank_name"
        }

        public init(accountHolder: String, accountNo: String, bankName: String, branchName: String, ifscCode: String) {
            self.ifscCode = ifscCode

            self.accountNo = accountNo

            self.accountHolder = accountHolder

            self.branchName = branchName

            self.bankName = bankName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            branchName = try container.decode(String.self, forKey: .branchName)

            bankName = try container.decode(String.self, forKey: .bankName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(bankName, forKey: .bankName)
        }
    }
}
