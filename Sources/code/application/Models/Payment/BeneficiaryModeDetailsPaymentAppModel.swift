

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: BeneficiaryModeDetails
         Used By: Payment
     */
    class BeneficiaryModeDetails: Codable {
        public var ifscCode: String

        public var address: String?

        public var branchName: String

        public var vpa: String?

        public var accountNo: String

        public var bankName: String

        public var email: String

        public var accountHolder: String

        public var wallet: String?

        public var mobile: String

        public var comment: String?

        public enum CodingKeys: String, CodingKey {
            case ifscCode = "ifsc_code"

            case address

            case branchName = "branch_name"

            case vpa

            case accountNo = "account_no"

            case bankName = "bank_name"

            case email

            case accountHolder = "account_holder"

            case wallet

            case mobile

            case comment
        }

        public init(accountHolder: String, accountNo: String, address: String? = nil, bankName: String, branchName: String, comment: String? = nil, email: String, ifscCode: String, mobile: String, vpa: String? = nil, wallet: String? = nil) {
            self.ifscCode = ifscCode

            self.address = address

            self.branchName = branchName

            self.vpa = vpa

            self.accountNo = accountNo

            self.bankName = bankName

            self.email = email

            self.accountHolder = accountHolder

            self.wallet = wallet

            self.mobile = mobile

            self.comment = comment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            branchName = try container.decode(String.self, forKey: .branchName)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)

            bankName = try container.decode(String.self, forKey: .bankName)

            email = try container.decode(String.self, forKey: .email)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                wallet = try container.decode(String.self, forKey: .wallet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobile = try container.decode(String.self, forKey: .mobile)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encode(wallet, forKey: .wallet)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(comment, forKey: .comment)
        }
    }
}
