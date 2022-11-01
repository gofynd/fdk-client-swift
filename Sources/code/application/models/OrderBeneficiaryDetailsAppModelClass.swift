

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var transferMode: String

        public var branchName: String?

        public var mobile: String?

        public var ifscCode: String

        public var comment: String?

        public var beneficiaryId: String

        public var id: Int

        public var accountNo: String

        public var email: String

        public var displayName: String

        public var title: String

        public var bankName: String

        public var modifiedOn: String

        public var isActive: Bool

        public var address: String

        public var createdOn: String

        public var accountHolder: String

        public var subtitle: String

        public var delightsUserName: String?

        public enum CodingKeys: String, CodingKey {
            case transferMode = "transfer_mode"

            case branchName = "branch_name"

            case mobile

            case ifscCode = "ifsc_code"

            case comment

            case beneficiaryId = "beneficiary_id"

            case id

            case accountNo = "account_no"

            case email

            case displayName = "display_name"

            case title

            case bankName = "bank_name"

            case modifiedOn = "modified_on"

            case isActive = "is_active"

            case address

            case createdOn = "created_on"

            case accountHolder = "account_holder"

            case subtitle

            case delightsUserName = "delights_user_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.transferMode = transferMode

            self.branchName = branchName

            self.mobile = mobile

            self.ifscCode = ifscCode

            self.comment = comment

            self.beneficiaryId = beneficiaryId

            self.id = id

            self.accountNo = accountNo

            self.email = email

            self.displayName = displayName

            self.title = title

            self.bankName = bankName

            self.modifiedOn = modifiedOn

            self.isActive = isActive

            self.address = address

            self.createdOn = createdOn

            self.accountHolder = accountHolder

            self.subtitle = subtitle

            self.delightsUserName = delightsUserName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferMode = try container.decode(String.self, forKey: .transferMode)

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

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            id = try container.decode(Int.self, forKey: .id)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            email = try container.decode(String.self, forKey: .email)

            displayName = try container.decode(String.self, forKey: .displayName)

            title = try container.decode(String.self, forKey: .title)

            bankName = try container.decode(String.self, forKey: .bankName)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            address = try container.decode(String.self, forKey: .address)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encode(delightsUserName, forKey: .delightsUserName)
        }
    }
}
