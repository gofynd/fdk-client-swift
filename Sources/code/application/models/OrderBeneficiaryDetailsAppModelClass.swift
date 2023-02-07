

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var transferMode: String

        public var subtitle: String

        public var accountNo: String

        public var modifiedOn: String

        public var isActive: Bool

        public var ifscCode: String

        public var comment: String?

        public var mobile: String?

        public var id: Int

        public var branchName: String?

        public var address: String

        public var delightsUserName: String?

        public var createdOn: String

        public var bankName: String

        public var accountHolder: String

        public var title: String

        public var email: String

        public var beneficiaryId: String

        public var displayName: String

        public enum CodingKeys: String, CodingKey {
            case transferMode = "transfer_mode"

            case subtitle

            case accountNo = "account_no"

            case modifiedOn = "modified_on"

            case isActive = "is_active"

            case ifscCode = "ifsc_code"

            case comment

            case mobile

            case id

            case branchName = "branch_name"

            case address

            case delightsUserName = "delights_user_name"

            case createdOn = "created_on"

            case bankName = "bank_name"

            case accountHolder = "account_holder"

            case title

            case email

            case beneficiaryId = "beneficiary_id"

            case displayName = "display_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.transferMode = transferMode

            self.subtitle = subtitle

            self.accountNo = accountNo

            self.modifiedOn = modifiedOn

            self.isActive = isActive

            self.ifscCode = ifscCode

            self.comment = comment

            self.mobile = mobile

            self.id = id

            self.branchName = branchName

            self.address = address

            self.delightsUserName = delightsUserName

            self.createdOn = createdOn

            self.bankName = bankName

            self.accountHolder = accountHolder

            self.title = title

            self.email = email

            self.beneficiaryId = beneficiaryId

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

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

            id = try container.decode(Int.self, forKey: .id)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            bankName = try container.decode(String.self, forKey: .bankName)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            title = try container.decode(String.self, forKey: .title)

            email = try container.decode(String.self, forKey: .email)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            displayName = try container.decode(String.self, forKey: .displayName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
