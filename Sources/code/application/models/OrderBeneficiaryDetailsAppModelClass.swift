

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var accountNo: String

        public var displayName: String

        public var transferMode: String

        public var createdOn: String

        public var modifiedOn: String

        public var bankName: String

        public var branchName: String?

        public var email: String

        public var beneficiaryId: String

        public var title: String

        public var isActive: Bool

        public var subtitle: String

        public var id: Int

        public var delightsUserName: String?

        public var comment: String?

        public var accountHolder: String

        public var ifscCode: String

        public var address: String

        public var mobile: String?

        public enum CodingKeys: String, CodingKey {
            case accountNo = "account_no"

            case displayName = "display_name"

            case transferMode = "transfer_mode"

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case bankName = "bank_name"

            case branchName = "branch_name"

            case email

            case beneficiaryId = "beneficiary_id"

            case title

            case isActive = "is_active"

            case subtitle

            case id

            case delightsUserName = "delights_user_name"

            case comment

            case accountHolder = "account_holder"

            case ifscCode = "ifsc_code"

            case address

            case mobile
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.accountNo = accountNo

            self.displayName = displayName

            self.transferMode = transferMode

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.bankName = bankName

            self.branchName = branchName

            self.email = email

            self.beneficiaryId = beneficiaryId

            self.title = title

            self.isActive = isActive

            self.subtitle = subtitle

            self.id = id

            self.delightsUserName = delightsUserName

            self.comment = comment

            self.accountHolder = accountHolder

            self.ifscCode = ifscCode

            self.address = address

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            displayName = try container.decode(String.self, forKey: .displayName)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            bankName = try container.decode(String.self, forKey: .bankName)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            title = try container.decode(String.self, forKey: .title)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            id = try container.decode(Int.self, forKey: .id)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            address = try container.decode(String.self, forKey: .address)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}
