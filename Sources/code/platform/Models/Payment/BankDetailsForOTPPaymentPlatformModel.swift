

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: BankDetailsForOTP
         Used By: Payment
     */

    class BankDetailsForOTP: Codable {
        public var bankName: String

        public var accountNo: String

        public var ifscCode: String

        public var accountHolder: String

        public var branchName: String

        public enum CodingKeys: String, CodingKey {
            case bankName = "bank_name"

            case accountNo = "account_no"

            case ifscCode = "ifsc_code"

            case accountHolder = "account_holder"

            case branchName = "branch_name"
        }

        public init(accountHolder: String, accountNo: String, bankName: String, branchName: String, ifscCode: String) {
            self.bankName = bankName

            self.accountNo = accountNo

            self.ifscCode = ifscCode

            self.accountHolder = accountHolder

            self.branchName = branchName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bankName = try container.decode(String.self, forKey: .bankName)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            branchName = try container.decode(String.self, forKey: .branchName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(branchName, forKey: .branchName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: BankDetailsForOTP
         Used By: Payment
     */

    class BankDetailsForOTP: Codable {
        public var bankName: String

        public var accountNo: String

        public var ifscCode: String

        public var accountHolder: String

        public var branchName: String

        public enum CodingKeys: String, CodingKey {
            case bankName = "bank_name"

            case accountNo = "account_no"

            case ifscCode = "ifsc_code"

            case accountHolder = "account_holder"

            case branchName = "branch_name"
        }

        public init(accountHolder: String, accountNo: String, bankName: String, branchName: String, ifscCode: String) {
            self.bankName = bankName

            self.accountNo = accountNo

            self.ifscCode = ifscCode

            self.accountHolder = accountHolder

            self.branchName = branchName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bankName = try container.decode(String.self, forKey: .bankName)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            branchName = try container.decode(String.self, forKey: .branchName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(branchName, forKey: .branchName)
        }
    }
}
