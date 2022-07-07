

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var id: Int

        public var isActive: Bool

        public var mobile: Bool?

        public var beneficiaryId: String

        public var ifscCode: String

        public var email: String

        public var title: String

        public var modifiedOn: String

        public var branchName: Bool?

        public var displayName: String

        public var createdOn: String

        public var address: String

        public var comment: Bool?

        public var subtitle: String

        public var accountNo: String

        public var delightsUserName: String?

        public var transferMode: String

        public var accountHolder: String

        public var bankName: String

        public enum CodingKeys: String, CodingKey {
            case id

            case isActive = "is_active"

            case mobile

            case beneficiaryId = "beneficiary_id"

            case ifscCode = "ifsc_code"

            case email

            case title

            case modifiedOn = "modified_on"

            case branchName = "branch_name"

            case displayName = "display_name"

            case createdOn = "created_on"

            case address

            case comment

            case subtitle

            case accountNo = "account_no"

            case delightsUserName = "delights_user_name"

            case transferMode = "transfer_mode"

            case accountHolder = "account_holder"

            case bankName = "bank_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.id = id

            self.isActive = isActive

            self.mobile = mobile

            self.beneficiaryId = beneficiaryId

            self.ifscCode = ifscCode

            self.email = email

            self.title = title

            self.modifiedOn = modifiedOn

            self.branchName = branchName

            self.displayName = displayName

            self.createdOn = createdOn

            self.address = address

            self.comment = comment

            self.subtitle = subtitle

            self.accountNo = accountNo

            self.delightsUserName = delightsUserName

            self.transferMode = transferMode

            self.accountHolder = accountHolder

            self.bankName = bankName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(Int.self, forKey: .id)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            email = try container.decode(String.self, forKey: .email)

            title = try container.decode(String.self, forKey: .title)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            address = try container.decode(String.self, forKey: .address)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subtitle = try container.decode(String.self, forKey: .subtitle)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferMode = try container.decode(String.self, forKey: .transferMode)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            bankName = try container.decode(String.self, forKey: .bankName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(bankName, forKey: .bankName)
        }
    }
}
