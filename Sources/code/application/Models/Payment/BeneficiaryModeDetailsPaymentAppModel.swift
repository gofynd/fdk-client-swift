

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: BeneficiaryModeDetails
         Used By: Payment
     */
    class BeneficiaryModeDetails: Codable {
        public var vpa: String?

        public var accountNo: String

        public var wallet: String?

        public var address: String?

        public var email: String

        public var comment: String?

        public var ifscCode: String

        public var bankName: String

        public var branchName: String

        public var accountHolder: String

        public var mobile: String

        public enum CodingKeys: String, CodingKey {
            case vpa

            case accountNo = "account_no"

            case wallet

            case address

            case email

            case comment

            case ifscCode = "ifsc_code"

            case bankName = "bank_name"

            case branchName = "branch_name"

            case accountHolder = "account_holder"

            case mobile
        }

        public init(accountHolder: String, accountNo: String, address: String? = nil, bankName: String, branchName: String, comment: String? = nil, email: String, ifscCode: String, mobile: String, vpa: String? = nil, wallet: String? = nil) {
            self.vpa = vpa

            self.accountNo = accountNo

            self.wallet = wallet

            self.address = address

            self.email = email

            self.comment = comment

            self.ifscCode = ifscCode

            self.bankName = bankName

            self.branchName = branchName

            self.accountHolder = accountHolder

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                wallet = try container.decode(String.self, forKey: .wallet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            bankName = try container.decode(String.self, forKey: .bankName)

            branchName = try container.decode(String.self, forKey: .branchName)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            mobile = try container.decode(String.self, forKey: .mobile)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encode(wallet, forKey: .wallet)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}