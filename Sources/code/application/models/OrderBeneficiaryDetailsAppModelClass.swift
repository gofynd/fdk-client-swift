

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var ifscCode: String

        public var accountHolder: String

        public var address: String

        public var delightsUserName: String?

        public var modifiedOn: String

        public var id: Int

        public var transferMode: String

        public var email: String

        public var beneficiaryId: String

        public var displayName: String

        public var mobile: Bool?

        public var createdOn: String

        public var subtitle: String

        public var title: String

        public var accountNo: String

        public var isActive: Bool

        public var bankName: String

        public var branchName: Bool?

        public var comment: Bool?

        public enum CodingKeys: String, CodingKey {
            case ifscCode = "ifsc_code"

            case accountHolder = "account_holder"

            case address

            case delightsUserName = "delights_user_name"

            case modifiedOn = "modified_on"

            case id

            case transferMode = "transfer_mode"

            case email

            case beneficiaryId = "beneficiary_id"

            case displayName = "display_name"

            case mobile

            case createdOn = "created_on"

            case subtitle

            case title

            case accountNo = "account_no"

            case isActive = "is_active"

            case bankName = "bank_name"

            case branchName = "branch_name"

            case comment
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.ifscCode = ifscCode

            self.accountHolder = accountHolder

            self.address = address

            self.delightsUserName = delightsUserName

            self.modifiedOn = modifiedOn

            self.id = id

            self.transferMode = transferMode

            self.email = email

            self.beneficiaryId = beneficiaryId

            self.displayName = displayName

            self.mobile = mobile

            self.createdOn = createdOn

            self.subtitle = subtitle

            self.title = title

            self.accountNo = accountNo

            self.isActive = isActive

            self.bankName = bankName

            self.branchName = branchName

            self.comment = comment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            address = try container.decode(String.self, forKey: .address)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(Int.self, forKey: .id)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            email = try container.decode(String.self, forKey: .email)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdOn = try container.decode(String.self, forKey: .createdOn)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            title = try container.decode(String.self, forKey: .title)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            bankName = try container.decode(String.self, forKey: .bankName)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(comment, forKey: .comment)
        }
    }
}
