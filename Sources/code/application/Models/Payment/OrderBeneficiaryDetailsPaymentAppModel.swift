

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var displayName: String

        public var id: Int

        public var accountHolder: String

        public var address: String

        public var createdOn: String

        public var transferMode: String

        public var accountNo: String

        public var isActive: Bool

        public var delightsUserName: String?

        public var email: String

        public var subtitle: String

        public var ifscCode: String

        public var branchName: String?

        public var title: String

        public var beneficiaryId: String

        public var comment: String?

        public var mobile: String?

        public var modifiedOn: String

        public var bankName: String

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case id

            case accountHolder = "account_holder"

            case address

            case createdOn = "created_on"

            case transferMode = "transfer_mode"

            case accountNo = "account_no"

            case isActive = "is_active"

            case delightsUserName = "delights_user_name"

            case email

            case subtitle

            case ifscCode = "ifsc_code"

            case branchName = "branch_name"

            case title

            case beneficiaryId = "beneficiary_id"

            case comment

            case mobile

            case modifiedOn = "modified_on"

            case bankName = "bank_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.displayName = displayName

            self.id = id

            self.accountHolder = accountHolder

            self.address = address

            self.createdOn = createdOn

            self.transferMode = transferMode

            self.accountNo = accountNo

            self.isActive = isActive

            self.delightsUserName = delightsUserName

            self.email = email

            self.subtitle = subtitle

            self.ifscCode = ifscCode

            self.branchName = branchName

            self.title = title

            self.beneficiaryId = beneficiaryId

            self.comment = comment

            self.mobile = mobile

            self.modifiedOn = modifiedOn

            self.bankName = bankName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayName = try container.decode(String.self, forKey: .displayName)

            id = try container.decode(Int.self, forKey: .id)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            address = try container.decode(String.self, forKey: .address)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            do {
                comment = try container.decode(String.self, forKey: .comment)

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

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            bankName = try container.decode(String.self, forKey: .bankName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(bankName, forKey: .bankName)
        }
    }
}
