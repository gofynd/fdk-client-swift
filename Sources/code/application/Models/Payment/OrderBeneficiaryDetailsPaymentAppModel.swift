

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var address: String

        public var delightsUserName: String?

        public var modifiedOn: String

        public var bankName: String

        public var transferMode: String

        public var email: String

        public var displayName: String

        public var branchName: String?

        public var mobile: String?

        public var accountNo: String

        public var comment: String?

        public var subtitle: String

        public var isActive: Bool

        public var title: String

        public var id: Int

        public var ifscCode: String

        public var createdOn: String

        public var beneficiaryId: String

        public var accountHolder: String

        public enum CodingKeys: String, CodingKey {
            case address

            case delightsUserName = "delights_user_name"

            case modifiedOn = "modified_on"

            case bankName = "bank_name"

            case transferMode = "transfer_mode"

            case email

            case displayName = "display_name"

            case branchName = "branch_name"

            case mobile

            case accountNo = "account_no"

            case comment

            case subtitle

            case isActive = "is_active"

            case title

            case id

            case ifscCode = "ifsc_code"

            case createdOn = "created_on"

            case beneficiaryId = "beneficiary_id"

            case accountHolder = "account_holder"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.address = address

            self.delightsUserName = delightsUserName

            self.modifiedOn = modifiedOn

            self.bankName = bankName

            self.transferMode = transferMode

            self.email = email

            self.displayName = displayName

            self.branchName = branchName

            self.mobile = mobile

            self.accountNo = accountNo

            self.comment = comment

            self.subtitle = subtitle

            self.isActive = isActive

            self.title = title

            self.id = id

            self.ifscCode = ifscCode

            self.createdOn = createdOn

            self.beneficiaryId = beneficiaryId

            self.accountHolder = accountHolder
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            bankName = try container.decode(String.self, forKey: .bankName)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            email = try container.decode(String.self, forKey: .email)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

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

            subtitle = try container.decode(String.self, forKey: .subtitle)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            title = try container.decode(String.self, forKey: .title)

            id = try container.decode(Int.self, forKey: .id)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
        }
    }
}
