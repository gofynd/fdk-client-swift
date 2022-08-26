

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var branchName: Bool?

        public var email: String

        public var id: Int

        public var transferMode: String

        public var bankName: String

        public var createdOn: String

        public var subtitle: String

        public var beneficiaryId: String

        public var address: String

        public var mobile: Bool?

        public var displayName: String

        public var ifscCode: String

        public var accountNo: String

        public var modifiedOn: String

        public var title: String

        public var comment: Bool?

        public var isActive: Bool

        public var delightsUserName: String?

        public var accountHolder: String

        public enum CodingKeys: String, CodingKey {
            case branchName = "branch_name"

            case email

            case id

            case transferMode = "transfer_mode"

            case bankName = "bank_name"

            case createdOn = "created_on"

            case subtitle

            case beneficiaryId = "beneficiary_id"

            case address

            case mobile

            case displayName = "display_name"

            case ifscCode = "ifsc_code"

            case accountNo = "account_no"

            case modifiedOn = "modified_on"

            case title

            case comment

            case isActive = "is_active"

            case delightsUserName = "delights_user_name"

            case accountHolder = "account_holder"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.branchName = branchName

            self.email = email

            self.id = id

            self.transferMode = transferMode

            self.bankName = bankName

            self.createdOn = createdOn

            self.subtitle = subtitle

            self.beneficiaryId = beneficiaryId

            self.address = address

            self.mobile = mobile

            self.displayName = displayName

            self.ifscCode = ifscCode

            self.accountNo = accountNo

            self.modifiedOn = modifiedOn

            self.title = title

            self.comment = comment

            self.isActive = isActive

            self.delightsUserName = delightsUserName

            self.accountHolder = accountHolder
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            id = try container.decode(Int.self, forKey: .id)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            bankName = try container.decode(String.self, forKey: .bankName)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            address = try container.decode(String.self, forKey: .address)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            title = try container.decode(String.self, forKey: .title)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            accountHolder = try container.decode(String.self, forKey: .accountHolder)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
        }
    }
}
