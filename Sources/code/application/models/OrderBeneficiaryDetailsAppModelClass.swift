

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var id: Int

        public var bankName: String

        public var mobile: String?

        public var title: String

        public var subtitle: String

        public var createdOn: String

        public var email: String

        public var accountHolder: String

        public var modifiedOn: String

        public var beneficiaryId: String

        public var delightsUserName: String?

        public var isActive: Bool

        public var comment: String?

        public var transferMode: String

        public var address: String

        public var ifscCode: String

        public var branchName: String?

        public var accountNo: String

        public var displayName: String

        public enum CodingKeys: String, CodingKey {
            case id

            case bankName = "bank_name"

            case mobile

            case title

            case subtitle

            case createdOn = "created_on"

            case email

            case accountHolder = "account_holder"

            case modifiedOn = "modified_on"

            case beneficiaryId = "beneficiary_id"

            case delightsUserName = "delights_user_name"

            case isActive = "is_active"

            case comment

            case transferMode = "transfer_mode"

            case address

            case ifscCode = "ifsc_code"

            case branchName = "branch_name"

            case accountNo = "account_no"

            case displayName = "display_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.id = id

            self.bankName = bankName

            self.mobile = mobile

            self.title = title

            self.subtitle = subtitle

            self.createdOn = createdOn

            self.email = email

            self.accountHolder = accountHolder

            self.modifiedOn = modifiedOn

            self.beneficiaryId = beneficiaryId

            self.delightsUserName = delightsUserName

            self.isActive = isActive

            self.comment = comment

            self.transferMode = transferMode

            self.address = address

            self.ifscCode = ifscCode

            self.branchName = branchName

            self.accountNo = accountNo

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(Int.self, forKey: .id)

            bankName = try container.decode(String.self, forKey: .bankName)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            title = try container.decode(String.self, forKey: .title)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            email = try container.decode(String.self, forKey: .email)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferMode = try container.decode(String.self, forKey: .transferMode)

            address = try container.decode(String.self, forKey: .address)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)

            displayName = try container.decode(String.self, forKey: .displayName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
