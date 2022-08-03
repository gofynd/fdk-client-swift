

import Foundation
public extension ApplicationClient {
    /*
         Model: BeneficiaryModeDetails
         Used By: Payment
     */
    class BeneficiaryModeDetails: Codable {
        public var bankName: String

        public var accountHolder: String

        public var address: String?

        public var mobile: String

        public var email: String

        public var accountNo: String

        public var ifscCode: String

        public var comment: String?

        public var branchName: String

        public var vpa: String?

        public var wallet: String?

        public enum CodingKeys: String, CodingKey {
            case bankName = "bank_name"

            case accountHolder = "account_holder"

            case address

            case mobile

            case email

            case accountNo = "account_no"

            case ifscCode = "ifsc_code"

            case comment

            case branchName = "branch_name"

            case vpa

            case wallet
        }

        public init(accountHolder: String, accountNo: String, address: String? = nil, bankName: String, branchName: String, comment: String? = nil, email: String, ifscCode: String, mobile: String, vpa: String? = nil, wallet: String? = nil) {
            self.bankName = bankName

            self.accountHolder = accountHolder

            self.address = address

            self.mobile = mobile

            self.email = email

            self.accountNo = accountNo

            self.ifscCode = ifscCode

            self.comment = comment

            self.branchName = branchName

            self.vpa = vpa

            self.wallet = wallet
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            bankName = try container.decode(String.self, forKey: .bankName)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobile = try container.decode(String.self, forKey: .mobile)

            email = try container.decode(String.self, forKey: .email)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                comment = try container.decode(String.self, forKey: .comment)

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

            do {
                wallet = try container.decode(String.self, forKey: .wallet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encode(wallet, forKey: .wallet)
        }
    }
}
