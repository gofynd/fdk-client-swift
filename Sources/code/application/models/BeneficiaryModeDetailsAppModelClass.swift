

import Foundation
public extension ApplicationClient {
    /*
         Model: BeneficiaryModeDetails
         Used By: Payment
     */
    class BeneficiaryModeDetails: Codable {
        public var branchName: String

        public var accountHolder: String

        public var bankName: String

        public var comment: String?

        public var address: String?

        public var accountNo: String

        public var mobile: String

        public var email: String

        public var wallet: String?

        public var ifscCode: String

        public var vpa: String?

        public enum CodingKeys: String, CodingKey {
            case branchName = "branch_name"

            case accountHolder = "account_holder"

            case bankName = "bank_name"

            case comment

            case address

            case accountNo = "account_no"

            case mobile

            case email

            case wallet

            case ifscCode = "ifsc_code"

            case vpa
        }

        public init(accountHolder: String, accountNo: String, address: String? = nil, bankName: String, branchName: String, comment: String? = nil, email: String, ifscCode: String, mobile: String, vpa: String? = nil, wallet: String? = nil) {
            self.branchName = branchName

            self.accountHolder = accountHolder

            self.bankName = bankName

            self.comment = comment

            self.address = address

            self.accountNo = accountNo

            self.mobile = mobile

            self.email = email

            self.wallet = wallet

            self.ifscCode = ifscCode

            self.vpa = vpa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            branchName = try container.decode(String.self, forKey: .branchName)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            bankName = try container.decode(String.self, forKey: .bankName)

            do {
                comment = try container.decode(String.self, forKey: .comment)

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

            accountNo = try container.decode(String.self, forKey: .accountNo)

            mobile = try container.decode(String.self, forKey: .mobile)

            email = try container.decode(String.self, forKey: .email)

            do {
                wallet = try container.decode(String.self, forKey: .wallet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(wallet, forKey: .wallet)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encode(vpa, forKey: .vpa)
        }
    }
}
