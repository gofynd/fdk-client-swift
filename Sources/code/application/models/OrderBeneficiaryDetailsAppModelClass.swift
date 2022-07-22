

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var beneficiaryId: String

        public var modifiedOn: String

        public var comment: String?

        public var createdOn: String

        public var address: String

        public var title: String

        public var accountHolder: String

        public var email: String

        public var delightsUserName: String?

        public var mobile: String?

        public var transferMode: String

        public var subtitle: String

        public var ifscCode: String

        public var bankName: String

        public var id: Int

        public var accountNo: String

        public var isActive: Bool

        public var branchName: String?

        public var displayName: String

        public enum CodingKeys: String, CodingKey {
            case beneficiaryId = "beneficiary_id"

            case modifiedOn = "modified_on"

            case comment

            case createdOn = "created_on"

            case address

            case title

            case accountHolder = "account_holder"

            case email

            case delightsUserName = "delights_user_name"

            case mobile

            case transferMode = "transfer_mode"

            case subtitle

            case ifscCode = "ifsc_code"

            case bankName = "bank_name"

            case id

            case accountNo = "account_no"

            case isActive = "is_active"

            case branchName = "branch_name"

            case displayName = "display_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.beneficiaryId = beneficiaryId

            self.modifiedOn = modifiedOn

            self.comment = comment

            self.createdOn = createdOn

            self.address = address

            self.title = title

            self.accountHolder = accountHolder

            self.email = email

            self.delightsUserName = delightsUserName

            self.mobile = mobile

            self.transferMode = transferMode

            self.subtitle = subtitle

            self.ifscCode = ifscCode

            self.bankName = bankName

            self.id = id

            self.accountNo = accountNo

            self.isActive = isActive

            self.branchName = branchName

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            address = try container.decode(String.self, forKey: .address)

            title = try container.decode(String.self, forKey: .title)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            email = try container.decode(String.self, forKey: .email)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

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

            transferMode = try container.decode(String.self, forKey: .transferMode)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            bankName = try container.decode(String.self, forKey: .bankName)

            id = try container.decode(Int.self, forKey: .id)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
