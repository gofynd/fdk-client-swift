

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var displayName: String

        public var accountNo: String

        public var modifiedOn: String

        public var beneficiaryId: String

        public var comment: String?

        public var createdOn: String

        public var branchName: String?

        public var isActive: Bool

        public var ifscCode: String

        public var accountHolder: String

        public var title: String

        public var id: Int

        public var email: String

        public var delightsUserName: String?

        public var address: String

        public var subtitle: String

        public var transferMode: String

        public var mobile: String?

        public var bankName: String

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case accountNo = "account_no"

            case modifiedOn = "modified_on"

            case beneficiaryId = "beneficiary_id"

            case comment

            case createdOn = "created_on"

            case branchName = "branch_name"

            case isActive = "is_active"

            case ifscCode = "ifsc_code"

            case accountHolder = "account_holder"

            case title

            case id

            case email

            case delightsUserName = "delights_user_name"

            case address

            case subtitle

            case transferMode = "transfer_mode"

            case mobile

            case bankName = "bank_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.displayName = displayName

            self.accountNo = accountNo

            self.modifiedOn = modifiedOn

            self.beneficiaryId = beneficiaryId

            self.comment = comment

            self.createdOn = createdOn

            self.branchName = branchName

            self.isActive = isActive

            self.ifscCode = ifscCode

            self.accountHolder = accountHolder

            self.title = title

            self.id = id

            self.email = email

            self.delightsUserName = delightsUserName

            self.address = address

            self.subtitle = subtitle

            self.transferMode = transferMode

            self.mobile = mobile

            self.bankName = bankName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayName = try container.decode(String.self, forKey: .displayName)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            title = try container.decode(String.self, forKey: .title)

            id = try container.decode(Int.self, forKey: .id)

            email = try container.decode(String.self, forKey: .email)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            bankName = try container.decode(String.self, forKey: .bankName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(bankName, forKey: .bankName)
        }
    }
}
