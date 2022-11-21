

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var transferMode: String

        public var email: String

        public var delightsUserName: String?

        public var accountNo: String

        public var title: String

        public var beneficiaryId: String

        public var isActive: Bool

        public var branchName: String?

        public var displayName: String

        public var bankName: String

        public var accountHolder: String

        public var address: String

        public var mobile: String?

        public var modifiedOn: String

        public var ifscCode: String

        public var id: Int

        public var createdOn: String

        public var comment: String?

        public var subtitle: String

        public enum CodingKeys: String, CodingKey {
            case transferMode = "transfer_mode"

            case email

            case delightsUserName = "delights_user_name"

            case accountNo = "account_no"

            case title

            case beneficiaryId = "beneficiary_id"

            case isActive = "is_active"

            case branchName = "branch_name"

            case displayName = "display_name"

            case bankName = "bank_name"

            case accountHolder = "account_holder"

            case address

            case mobile

            case modifiedOn = "modified_on"

            case ifscCode = "ifsc_code"

            case id

            case createdOn = "created_on"

            case comment

            case subtitle
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: String? = nil, comment: String? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: String? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.transferMode = transferMode

            self.email = email

            self.delightsUserName = delightsUserName

            self.accountNo = accountNo

            self.title = title

            self.beneficiaryId = beneficiaryId

            self.isActive = isActive

            self.branchName = branchName

            self.displayName = displayName

            self.bankName = bankName

            self.accountHolder = accountHolder

            self.address = address

            self.mobile = mobile

            self.modifiedOn = modifiedOn

            self.ifscCode = ifscCode

            self.id = id

            self.createdOn = createdOn

            self.comment = comment

            self.subtitle = subtitle
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            email = try container.decode(String.self, forKey: .email)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountNo = try container.decode(String.self, forKey: .accountNo)

            title = try container.decode(String.self, forKey: .title)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                branchName = try container.decode(String.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            bankName = try container.decode(String.self, forKey: .bankName)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            address = try container.decode(String.self, forKey: .address)

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            id = try container.decode(Int.self, forKey: .id)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subtitle = try container.decode(String.self, forKey: .subtitle)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)
        }
    }
}
