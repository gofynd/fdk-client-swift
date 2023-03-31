

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: BeneficiaryModeDetails
         Used By: Payment
     */

    class BeneficiaryModeDetails: Codable {
        public var bankName: String

        public var email: String

        public var wallet: String?

        public var mobile: String

        public var branchName: String

        public var ifscCode: String

        public var accountNo: String

        public var address: String?

        public var accountHolder: String

        public var comment: String?

        public var vpa: String?

        public enum CodingKeys: String, CodingKey {
            case bankName = "bank_name"

            case email

            case wallet

            case mobile

            case branchName = "branch_name"

            case ifscCode = "ifsc_code"

            case accountNo = "account_no"

            case address

            case accountHolder = "account_holder"

            case comment

            case vpa
        }

        public init(accountHolder: String, accountNo: String, address: String? = nil, bankName: String, branchName: String, comment: String? = nil, email: String, ifscCode: String, mobile: String, vpa: String? = nil, wallet: String? = nil) {
            self.bankName = bankName

            self.email = email

            self.wallet = wallet

            self.mobile = mobile

            self.branchName = branchName

            self.ifscCode = ifscCode

            self.accountNo = accountNo

            self.address = address

            self.accountHolder = accountHolder

            self.comment = comment

            self.vpa = vpa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bankName = try container.decode(String.self, forKey: .bankName)

            email = try container.decode(String.self, forKey: .email)

            do {
                wallet = try container.decode(String.self, forKey: .wallet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobile = try container.decode(String.self, forKey: .mobile)

            branchName = try container.decode(String.self, forKey: .branchName)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(wallet, forKey: .wallet)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encode(vpa, forKey: .vpa)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: BeneficiaryModeDetails
         Used By: Payment
     */

    class BeneficiaryModeDetails: Codable {
        public var bankName: String

        public var email: String

        public var wallet: String?

        public var mobile: String

        public var branchName: String

        public var ifscCode: String

        public var accountNo: String

        public var address: String?

        public var accountHolder: String

        public var comment: String?

        public var vpa: String?

        public enum CodingKeys: String, CodingKey {
            case bankName = "bank_name"

            case email

            case wallet

            case mobile

            case branchName = "branch_name"

            case ifscCode = "ifsc_code"

            case accountNo = "account_no"

            case address

            case accountHolder = "account_holder"

            case comment

            case vpa
        }

        public init(accountHolder: String, accountNo: String, address: String? = nil, bankName: String, branchName: String, comment: String? = nil, email: String, ifscCode: String, mobile: String, vpa: String? = nil, wallet: String? = nil) {
            self.bankName = bankName

            self.email = email

            self.wallet = wallet

            self.mobile = mobile

            self.branchName = branchName

            self.ifscCode = ifscCode

            self.accountNo = accountNo

            self.address = address

            self.accountHolder = accountHolder

            self.comment = comment

            self.vpa = vpa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bankName = try container.decode(String.self, forKey: .bankName)

            email = try container.decode(String.self, forKey: .email)

            do {
                wallet = try container.decode(String.self, forKey: .wallet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobile = try container.decode(String.self, forKey: .mobile)

            branchName = try container.decode(String.self, forKey: .branchName)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(wallet, forKey: .wallet)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encode(vpa, forKey: .vpa)
        }
    }
}
