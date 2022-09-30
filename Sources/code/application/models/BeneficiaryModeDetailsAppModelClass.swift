

import Foundation
public extension ApplicationClient {
    /*
         Model: BeneficiaryModeDetails
         Used By: Payment
     */
    class BeneficiaryModeDetails: Codable {
        public var accountHolder: String

        public var address: String?

        public var wallet: String?

        public var mobile: String

        public var branchName: String

        public var email: String

        public var ifscCode: String

        public var bankName: String

        public var vpa: String?

        public var accountNo: String

        public var comment: String?

        public enum CodingKeys: String, CodingKey {
            case accountHolder = "account_holder"

            case address

            case wallet

            case mobile

            case branchName = "branch_name"

            case email

            case ifscCode = "ifsc_code"

            case bankName = "bank_name"

            case vpa

            case accountNo = "account_no"

            case comment
        }

        public init(accountHolder: String, accountNo: String, address: String? = nil, bankName: String, branchName: String, comment: String? = nil, email: String, ifscCode: String, mobile: String, vpa: String? = nil, wallet: String? = nil) {
            self.accountHolder = accountHolder

            self.address = address

            self.wallet = wallet

            self.mobile = mobile

            self.branchName = branchName

            self.email = email

            self.ifscCode = ifscCode

            self.bankName = bankName

            self.vpa = vpa

            self.accountNo = accountNo

            self.comment = comment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                wallet = try container.decode(String.self, forKey: .wallet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobile = try container.decode(String.self, forKey: .mobile)

            branchName = try container.decode(String.self, forKey: .branchName)

            email = try container.decode(String.self, forKey: .email)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            bankName = try container.decode(String.self, forKey: .bankName)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encode(wallet, forKey: .wallet)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(comment, forKey: .comment)
        }
    }
}
