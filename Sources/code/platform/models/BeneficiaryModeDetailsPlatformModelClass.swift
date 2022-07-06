

import Foundation
public extension PlatformClient {
    /*
         Model: BeneficiaryModeDetails
         Used By: Payment
     */

    class BeneficiaryModeDetails: Codable {
        public var vpa: String?

        public var bankName: String

        public var email: String

        public var wallet: String?

        public var mobile: String

        public var accountNo: String

        public var accountHolder: String

        public var ifscCode: String

        public var branchName: String

        public var comment: String?

        public var address: String?

        public enum CodingKeys: String, CodingKey {
            case vpa

            case bankName = "bank_name"

            case email

            case wallet

            case mobile

            case accountNo = "account_no"

            case accountHolder = "account_holder"

            case ifscCode = "ifsc_code"

            case branchName = "branch_name"

            case comment

            case address
        }

        public init(accountHolder: String, accountNo: String, address: String? = nil, bankName: String, branchName: String, comment: String? = nil, email: String, ifscCode: String, mobile: String, vpa: String? = nil, wallet: String? = nil) {
            self.vpa = vpa

            self.bankName = bankName

            self.email = email

            self.wallet = wallet

            self.mobile = mobile

            self.accountNo = accountNo

            self.accountHolder = accountHolder

            self.ifscCode = ifscCode

            self.branchName = branchName

            self.comment = comment

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)

            email = try container.decode(String.self, forKey: .email)

            do {
                wallet = try container.decode(String.self, forKey: .wallet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobile = try container.decode(String.self, forKey: .mobile)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            branchName = try container.decode(String.self, forKey: .branchName)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(vpa, forKey: .vpa)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(wallet, forKey: .wallet)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }
}
