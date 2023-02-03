

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var email: String

        public var displayName: String

        public var isActive: Bool

        public var accountNo: String

        public var bankName: String

        public var beneficiaryId: String

        public var delightsUserName: String?

        public var comment: String?

        public var title: String

        public var address: String

        public var createdOn: String

        public var ifscCode: String

        public var transferMode: String

        public var subtitle: String

        public var modifiedOn: String

        public var id: Int

        public var mobile: String?

        public var branchName: String?

        public var accountHolder: String

        public enum CodingKeys: String, CodingKey {
            case email

            case displayName = "display_name"

            case isActive = "is_active"

            case accountNo = "account_no"

            case bankName = "bank_name"

            case beneficiaryId = "beneficiary_id"

            case delightsUserName = "delights_user_name"

            case comment

            case title

            case address

            case createdOn = "created_on"

            case ifscCode = "ifsc_code"

            case transferMode = "transfer_mode"

            case subtitle

            case modifiedOn = "modified_on"

            case id

            case mobile

            case branchName = "branch_name"

            case accountHolder = "account_holder"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.email = email

            self.displayName = displayName

            self.isActive = isActive

            self.accountNo = accountNo

            self.bankName = bankName

            self.beneficiaryId = beneficiaryId

            self.delightsUserName = delightsUserName

            self.comment = comment

            self.title = title

            self.address = address

            self.createdOn = createdOn

            self.ifscCode = ifscCode

            self.transferMode = transferMode

            self.subtitle = subtitle

            self.modifiedOn = modifiedOn

            self.id = id

            self.mobile = mobile

            self.branchName = branchName

            self.accountHolder = accountHolder
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            displayName = try container.decode(String.self, forKey: .displayName)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            bankName = try container.decode(String.self, forKey: .bankName)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

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

            title = try container.decode(String.self, forKey: .title)

            address = try container.decode(String.self, forKey: .address)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(Int.self, forKey: .id)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
        }
    }
}
