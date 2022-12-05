

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var email: String

        public var accountHolder: String

        public var createdOn: String

        public var accountNo: String

        public var bankName: String

        public var mobile: String?

        public var subtitle: String

        public var delightsUserName: String?

        public var displayName: String

        public var comment: String?

        public var address: String

        public var beneficiaryId: String

        public var ifscCode: String

        public var modifiedOn: String

        public var title: String

        public var transferMode: String

        public var branchName: String?

        public var id: Int

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case email

            case accountHolder = "account_holder"

            case createdOn = "created_on"

            case accountNo = "account_no"

            case bankName = "bank_name"

            case mobile

            case subtitle

            case delightsUserName = "delights_user_name"

            case displayName = "display_name"

            case comment

            case address

            case beneficiaryId = "beneficiary_id"

            case ifscCode = "ifsc_code"

            case modifiedOn = "modified_on"

            case title

            case transferMode = "transfer_mode"

            case branchName = "branch_name"

            case id

            case isActive = "is_active"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.email = email

            self.accountHolder = accountHolder

            self.createdOn = createdOn

            self.accountNo = accountNo

            self.bankName = bankName

            self.mobile = mobile

            self.subtitle = subtitle

            self.delightsUserName = delightsUserName

            self.displayName = displayName

            self.comment = comment

            self.address = address

            self.beneficiaryId = beneficiaryId

            self.ifscCode = ifscCode

            self.modifiedOn = modifiedOn

            self.title = title

            self.transferMode = transferMode

            self.branchName = branchName

            self.id = id

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            bankName = try container.decode(String.self, forKey: .bankName)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subtitle = try container.decode(String.self, forKey: .subtitle)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            title = try container.decode(String.self, forKey: .title)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
